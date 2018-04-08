program define varsplit, rclass
version 9
if regexm("`1'", "[^0-9]") | `1' == 0 {
	di as error "you need to specify a positive integer to decide how many variables you split the variable into"
	exit 198
}
local var_num = 0
foreach var of varlist _all {
	local varname `var'
	local var_num = `var_num' + 1
}
if `var_num' != 1 {
	di as error "varsplit can be only used when you have only one variable in your dataset"
	exit 198
}
if mod(_N, `1') != 0 {
	di as text "there will be some missing values if you split the variable in `1' variables"
}
quietly {
	forvalues i = 1/`1' {
		gen `varname'`i'= `varname'[_n + `i' - 1]
	}
	drop `varname'
	keep if mod(_n, `1') == 1
	compress
}
end
