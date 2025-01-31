module theme
using FileIO
using Images
using YAML
using Colors
using ColorTypes

include("OKColor.jl")
using .OKColor

export generate_theme



using ColorTypes, Colors, Images

function generate_pixels(colours::Vector{RGB{Float64}}, name::String)
    width = 1600
    height = 100
    block_width = div(width, length(colours))
    block_remainder = width % length(colours)

    img = Array{RGB{Float64},2}(undef, height, width)
    current_x = 1

    for colour in colours
        block_end = current_x + block_width - 1
        if colour == colours[1]
            block_end += block_remainder
        end
        img[:, current_x:block_end] .= colour
        current_x = block_end + 1
    end

    save(name, img)
end



function create_colors(lue::Float64, c::Float64, h::Array{Float64,1})
    return [OKcolor(Oklch(lue * 0.01, c, hue)) for hue in h]
end

function generate_color(lue::Array{Float64,1}, hue::Array{Float64,1})
    d0 = create_colors(lue[1], 0.015, [hue[1], hue[2]])
    d1 = create_colors(lue[2], 0.015, [hue[1], hue[2]])
    d1a = make_accents(OKcolor(Oklch(lue[2] * 0.01, 0.015, hue[2])), 0.06, 8)
    d2 = create_colors(lue[3], 0.015, [hue[1], hue[2]])
    d3 = create_colors(lue[4], 0.015, [hue[1], hue[2]])
    d3a = make_accents(OKcolor(Oklch(lue[4] * 0.01, 0.015, hue[2])), 0.07, 8)
    v3 = create_colors(lue[5], 0.015, [hue[1], hue[2]])
    v2 = create_colors(lue[6], 0.015, [hue[1], hue[2]])
    v2a = make_accents(OKcolor(Oklch(lue[6] * 0.01, 0.015, hue[2])), 0.06, 8)
    v1 = create_colors(lue[7], 0.015, [hue[1], hue[2]])
    v0 = create_colors(lue[8], 0.015, [hue[1], hue[2]])

    colors = [
        vcat(d0, d1, d2, d3, d1a, d3a),
        vcat(v0, v1, v2, v3, v2a)
    ]

    return colors
end

function generate_doc(fg::Vector{OKcolor}, fg_names::Vector{String}, bg::Vector{OKcolor}, bg_names::Vector{String}, name::String)
    doc = generate_header(name)
    doc *= generate_color_table(vcat(fg, bg), vcat(fg_names, bg_names))

    doc *= "### contrast\n\n"

    first_group_size = 6
    doc *= generate_contrast_table(fg, fg_names, bg[1:first_group_size], bg_names[1:first_group_size])

    doc *= generate_contrast_table(fg, fg_names, bg[first_group_size+1:end], bg_names[first_group_size+1:end])

    write_to_file(doc)
end

function generate_header(name::String)
    return "## $name colors\n\n"
end

function generate_color_table(fg::Vector{OKcolor}, fg_names::Vector{String})
    doc = "| | hex | rgb | OKlab |\n"
    doc *= "|---|---|---|---|\n"

    for (color, name) in zip(fg, fg_names)
        rgb_values = [round(i, digits=3) for i in [color.rgb.r, color.rgb.g, color.rgb.b]]
        OKlab_values = [round(i, digits=3) for i in [color.oklab.l, color.oklab.a, color.oklab.b]]
        OKlch_values = [round(i, digits=3) for i in [color.oklch.l, color.oklch.c, color.oklch.h]]
        doc *= "| $name | #$(color.hex) | $rgb_values | $OKlab_values | $OKlch_values |\n"
    end
    doc *= "\n\n"

    return doc
end

function generate_contrast_table(fg::Vector{OKcolor}, fg_names::Vector{String},
    bg_subset::Vector{OKcolor}, bg_names_subset::Vector{String})
    doc = "| | " * join(bg_names_subset, " | ") * " |\n"
    doc *= "|---" * "|---"^length(bg_names_subset) * "|\n"

    for (color, name) in zip(fg, fg_names)
		contrast_values = [cmp_luminance(bg_color, color) > 7 ? "AAA" : cmp_luminance(bg_color, color) > 4.5 ? "AA" : cmp_luminance(bg_color,color) for bg_color in bg_subset]
        contrast_str = join(string.(contrast_values), " | ")
        doc *= "| $name | $contrast_str |\n"
    end

    doc *= "\n\n"
    return doc
end


function write_to_file(doc::String)
    open("README.md", "a") do f
        write(f, doc)
    end
end



function generate_theme(lue::Array{Float64,1}, hue::Array{Float64,1}, name::String)
    colors = generate_color(lue, hue)
    fg_names = [
        "d0_black", "d0_white", "d1_black", "d1_white",
        "d2_black", "d2_white", "d3_black", "d3_white",
        "d1_red", "d1_orange", "d1_yellow", "d1_chartreuse",
        "d1_green", "d1_cyan", "d1_blue", "d1_purple",
        "d3_red", "d3_orange", "d3_yellow", "d3_chartreuse",
        "d3_green", "d3_cyan", "d3_blue", "d3_purple"
    ]
    bg_names = [
        "v0_black", "v0_white", "v1_black", "v1_white",
        "v2_black", "v2_white", "v3_black", "v3_white",
        "v2_red", "v2_orange", "v2_yellow", "v2_chartreuse",
        "v2_green", "v2_cyan", "v2_blue", "v2_purple"
    ]
    color_names = vcat(fg_names, bg_names)

    generate_doc(colors[1], fg_names, colors[2], bg_names, name)
    colors = vcat(colors...)
    rgb_colors = [color.rgb for color in colors]
    generate_pixels(rgb_colors, "palette/$name.png")

    hex_output = "name: \"mytilus_$name\"\n" *
                 join([string("$name: \"#$(color.hex)\"") for (name, color) in zip(color_names, colors)], "\n")

    open("palette/$name.yml", "w") do f
        write(f, hex_output)
    end
end

end
