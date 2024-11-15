---@param palette Palette
---@return table<string,vim.api.keyset.highlight|string>
local function setup(palette)
	local p = palette
	return {
		NvimAnd                                = "NvimBinaryOperator",
		NvimArrow                              = "Delimiter",
		NvimAssignment                         = "Operator",
		NvimAssignmentWithAddition             = "NvimAugmentedAssignment",
		NvimAssignmentWithConcatenation        = "NvimAugmentedAssignment",
		NvimAssignmentWithSubtraction          = "NvimAugmentedAssignment",
		NvimAugmentedAssignment                = "NvimAssignment",
		NvimBinaryMinus                        = "NvimBinaryOperator",
		NvimBinaryOperator                     = "NvimOperator",
		NvimBinaryPlus                         = "NvimBinaryOperator",
		NvimCallingParenthesis                 = "NvimParenthesis",
		NvimColon                              = "Delimiter",
		NvimComma                              = "Delimiter",
		NvimComparison                         = "NvimBinaryOperator",
		NvimComparisonModifier                 = "NvimComparison",
		NvimConcat                             = "NvimBinaryOperator",
		NvimConcatOrSubscript                  = "NvimConcat",
		NvimContainer                          = "NvimParenthesis",
		NvimCurly                              = "NvimSubscript",
		NvimDict                               = "NvimContainer",
		NvimDivision                           = "NvimBinaryOperator",
		NvimDoubleQuote                        = "NvimStringQuote",
		NvimDoubleQuotedBody                   = "NvimStringBody",
		NvimDoubleQuotedEscape                 = "NvimStringSpecial",
		NvimDoubleQuotedUnknownEscape          = "NvimInvalidValue",
		NvimEnvironmentName                    = "NvimIdentifier",
		NvimEnvironmentSigil                   = "NvimOptionSigil",
		NvimFigureBrace                        = "NvimInternalError",
		NvimFloat                              = "NvimNumber",
		NvimIdentifier                         = "Identifier",
		NvimIdentifierKey                      = "NvimIdentifier",
		NvimIdentifierName                     = "NvimIdentifier",
		NvimIdentifierScope                    = "NvimIdentifier",
		NvimIdentifierScopeDelimiter           = "NvimIdentifier",
		NvimInternalError                      = { p.di.error },
		NvimLambda                             = "NvimParenthesis",
		NvimList                               = "NvimContainer",
		NvimMod                                = "NvimBinaryOperator",
		NvimMultiplication                     = "NvimBinaryOperator",
		NvimNestingParenthesis                 = "NvimParenthesis",
		NvimNot                                = "NvimUnaryOperator",
		NvimNumber                             = "Number",
		NvimNumberPrefix                       = "Type",
		NvimOperator                           = "Operator",
		NvimOptionName                         = "NvimIdentifier",
		NvimOptionScope                        = "NvimIdentifierScope",
		NvimOptionScopeDelimiter               = "NvimIdentifierScopeDelimiter",
		NvimOptionSigil                        = "Type",
		NvimOr                                 = "NvimBinaryOperator",
		NvimParenthesis                        = "Delimiter",
		NvimPlainAssignment                    = "NvimAssignment",
		NvimRegister                           = "SpecialChar",
		NvimSingleQuote                        = "NvimStringQuote",
		NvimSingleQuotedBody                   = "NvimStringBody",
		NvimSingleQuotedQuote                  = "NvimStringSpecial",
		NvimSingleQuotedUnknownEscape          = "NvimInternalError",
		NvimSpacing                            = "Normal",
		NvimString                             = "String",
		NvimStringBody                         = "NvimString",
		NvimStringQuote                        = "NvimString",
		NvimStringSpecial                      = "SpecialChar",
		NvimSubscript                          = "NvimParenthesis",
		NvimSubscriptBracket                   = "NvimSubscript",
		NvimSubscriptColon                     = "NvimSubscript",
		NvimTernary                            = "NvimOperator",
		NvimTernaryColon                       = "NvimTernary",
		NvimUnaryMinus                         = "NvimUnaryOperator",
		NvimUnaryOperator                      = "NvimOperator",
		NvimUnaryPlus                          = "NvimUnaryOperator",

		NvimInvalid                            = "Error",
		NvimInvalidAnd                         = "NvimInvalidBinaryOperator",
		NvimInvalidArrow                       = "NvimInvalidDelimiter",
		NvimInvalidAssignment                  = "NvimInvalid",
		NvimInvalidAssignmentWithAddition      = "NvimInvalidAugmentedAssignment",
		NvimInvalidAssignmentWithConcatenation = "NvimInvalidAugmentedAssignment",
		NvimInvalidAssignmentWithSubtraction   = "NvimInvalidAugmentedAssignment",
		NvimInvalidAugmentedAssignment         = "NvimInvalidAssignment",
		NvimInvalidBinaryMinus                 = "NvimInvalidBinaryOperator",
		NvimInvalidBinaryOperator              = "NvimInvalidOperator",
		NvimInvalidBinaryPlus                  = "NvimInvalidBinaryOperator",
		NvimInvalidCallingParenthesis          = "NvimInvalidParenthesis",
		NvimInvalidColon                       = "NvimInvalidDelimiter",
		NvimInvalidComma                       = "NvimInvalidDelimiter",
		NvimInvalidComparison                  = "NvimInvalidBinaryOperator",
		NvimInvalidComparisonModifier          = "NvimInvalidComparison",
		NvimInvalidConcat                      = "NvimInvalidBinaryOperator",
		NvimInvalidConcatOrSubscript           = "NvimInvalidConcat",
		NvimInvalidContainer                   = "NvimInvalidParenthesis",
		NvimInvalidCurly                       = "NvimInvalidSubscript",
		NvimInvalidDelimiter                   = "NvimInvalid",
		NvimInvalidDict                        = "NvimInvalidContainer",
		NvimInvalidDivision                    = "NvimInvalidBinaryOperator",
		NvimInvalidDoubleQuote                 = "NvimInvalidStringQuote",
		NvimInvalidDoubleQuotedBody            = "NvimInvalidStringBody",
		NvimInvalidDoubleQuotedEscape          = "NvimInvalidStringSpecial",
		NvimInvalidDoubleQuotedUnknownEscape   = "NvimInvalidValue",
		NvimInvalidEnvironmentName             = "NvimInvalidIdentifier",
		NvimInvalidEnvironmentSigil            = "NvimInvalidOptionSigil",
		NvimInvalidFigureBrace                 = "NvimInvalidDelimiter",
		NvimInvalidFloat                       = "NvimInvalidNumber",
		NvimInvalidIdentifier                  = "NvimInvalidValue",
		NvimInvalidIdentifierKey               = "NvimInvalidIdentifier",
		NvimInvalidIdentifierName              = "NvimInvalidIdentifier",
		NvimInvalidIdentifierScope             = "NvimInvalidIdentifier",
		NvimInvalidIdentifierScopeDelimiter    = "NvimInvalidIdentifier",
		NvimInvalidLambda                      = "NvimInvalidParenthesis",
		NvimInvalidList                        = "NvimInvalidContainer",
		NvimInvalidMod                         = "NvimInvalidBinaryOperator",
		NvimInvalidMultiplication              = "NvimInvalidBinaryOperator",
		NvimInvalidNestingParenthesis          = "NvimInvalidParenthesis",
		NvimInvalidNot                         = "NvimInvalidUnaryOperator",
		NvimInvalidNumber                      = "NvimInvalidValue",
		NvimInvalidNumberPrefix                = "NvimInvalidNumber",
		NvimInvalidOperator                    = "NvimInvalid",
		NvimInvalidOptionName                  = "NvimInvalidIdentifier",
		NvimInvalidOptionScope                 = "NvimInvalidIdentifierScope",
		NvimInvalidOptionScopeDelimiter        = "NvimInvalidIdentifierScopeDelimiter",
		NvimInvalidOptionSigil                 = "NvimInvalidIdentifier",
		NvimInvalidOr                          = "NvimInvalidBinaryOperator",
		NvimInvalidParenthesis                 = "NvimInvalidDelimiter",
		NvimInvalidPlainAssignment             = "NvimInvalidAssignment",
		NvimInvalidRegister                    = "NvimInvalidValue",
		NvimInvalidSingleQuote                 = "NvimInvalidStringQuote",
		NvimInvalidSingleQuotedBody            = "NvimInvalidStringBody",
		NvimInvalidSingleQuotedQuote           = "NvimInvalidStringSpecial",
		NvimInvalidSingleQuotedUnknownEscape   = "NvimInternalError",
		NvimInvalidSpacing                     = "ErrorMsg",
		NvimInvalidString                      = "NvimInvalidValue",
		NvimInvalidStringBody                  = "NvimStringBody",
		NvimInvalidStringQuote                 = "NvimInvalidString",
		NvimInvalidStringSpecial               = "NvimStringSpecial",
		NvimInvalidSubscript                   = "NvimInvalidParenthesis",
		NvimInvalidSubscriptBracket            = "NvimInvalidSubscript",
		NvimInvalidSubscriptColon              = "NvimInvalidSubscript",
		NvimInvalidTernary                     = "NvimInvalidOperator",
		NvimInvalidTernaryColon                = "NvimInvalidTernary",
		NvimInvalidUnaryMinus                  = "NvimInvalidUnaryOperator",
		NvimInvalidUnaryOperator               = "NvimInvalidOperator",
		NvimInvalidUnaryPlus                   = "NvimInvalidUnaryOperator",
		NvimInvalidValue                       = "NvimInvalid",
	}
end

return {
	setup = setup,
}