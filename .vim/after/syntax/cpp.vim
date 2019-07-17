" we need the conceal ceature (vim ≥ 7.3)
if !has('conceal')
    cinish
endif

" remove the keywords. we'll re-add them below
syntax clear cOperator
syntax clear cType

syntax match cNiceOperator "||" conceal cchar=∨
syntax match cNiceOperator "&&" conceal cchar=∧
syntax match cNiceOperator "not" conceal cchar=!

" Inferior to FiraCode ligatures
"syntax match cNiceOperator "<=" conceal cchar=≤
"syntax match cNiceOperator ">=" conceal cchar=≥
"syntax match cNiceOperator "=\@<!===\@!" conceal cchar=≡
"syntax match cNiceOperator "!=" conceal cchar=≢

"syntax match cNiceOperator "<=" conceal cchar=≤
"syntax match cNiceOperator ">=" conceal cchar=≥

syntax match cNormal "\%( \)<<\%( \)" conceal

syntax keyword cNiceOperator sum conceal cchar=∑
syntax match cNiceOperator "\<sqrt\>" conceal cchar=√
syntax match cNormal "\<std::" conceal cchar=•

syntax keyword cNiceOperator for conceal cchar=∀
syntax keyword cNiceOperator return conceal cchar=↲
syntax keyword cNiceOperator if conceal cchar=▸
syntax keyword cNiceOperator else conceal cchar=∎
syntax match cNiceOperator "\<el\%(se\)\%( \)\?if\>" conceal cchar=▹
"syntax keyword cNiceOperator exit conceal cchar=↯

syntax keyword pyNiceFunction str conceal cchar=“
syntax keyword cNiceType int conceal cchar=ℤ
syntax keyword cNiceType real conceal cchar=ℝ
syntax keyword cNiceType double conceal cchar=D
syntax keyword cNiceType bool
syntax keyword cNiceType char

syntax keyword cNormal alpha conceal cchar=α
syntax keyword cNormal beta conceal cchar=β
syntax keyword cNormal Gamma conceal cchar=Γ
syntax keyword cNormal gamma conceal cchar=γ
syntax keyword cNormal Delta conceal cchar=Δ
syntax keyword cNormal delta conceal cchar=δ
syntax keyword cNormal epsilon conceal cchar=ε
syntax keyword cNormal zeta conceal cchar=ζ
syntax keyword cNormal eta conceal cchar=η
syntax keyword cNormal Theta conceal cchar=ϴ
syntax keyword cNormal theta conceal cchar=θ
syntax keyword cNormal kappa conceal cchar=κ
syntax keyword cNormal lambda conceal cchar=λ
syntax keyword cNormal mu conceal cchar=μ
syntax keyword cNormal nu conceal cchar=ν
syntax keyword cNormal Xi conceal cchar=Ξ
syntax keyword cNormal xi conceal cchar=ξ
syntax keyword cNormal Pi conceal cchar=Π
syntax keyword cNormal pi conceal cchar=π
syntax keyword cNormal rho conceal cchar=ρ
syntax keyword cNormal sigma conceal cchar=σ
syntax keyword cNormal tau conceal cchar=τ
syntax keyword cNormal upsilon conceal cchar=υ
syntax keyword cNormal Phi conceal cchar=Φ
syntax keyword cNormal phi conceal cchar=φ
syntax keyword cNormal chi conceal cchar=χ
syntax keyword cNormal Psi conceal cchar=Ψ
syntax keyword cNormal psi conceal cchar=ψ
syntax keyword cNormal Omega conceal cchar=Ω
syntax keyword cNormal omega conceal cchar=ω
syntax keyword cNormal nabla conceal cchar=∇

syntax keyword cNormal ALPHA conceal cchar=α
syntax keyword cNormal BETA conceal cchar=β
syntax keyword cNormal GAMMA conceal cchar=γ
syntax keyword cNormal DELTA conceal cchar=δ
syntax keyword cNormal EPSILON conceal cchar=ε
syntax keyword cNormal ZETA conceal cchar=ζ
syntax keyword cNormal ETA conceal cchar=η
syntax keyword cNormal THETA conceal cchar=θ
syntax keyword cNormal KAPPA conceal cchar=κ
syntax keyword cNormal LAMBDA conceal cchar=λ
syntax keyword cNormal MU conceal cchar=μ
syntax keyword cNormal NU conceal cchar=ν
syntax keyword cNormal XI conceal cchar=ξ
syntax keyword cNormal RHO conceal cchar=ρ
syntax keyword cNormal SIGMA conceal cchar=σ
syntax keyword cNormal TAU conceal cchar=τ
syntax keyword cNormal UPSILON conceal cchar=υ
syntax keyword cNormal PHI conceal cchar=φ
syntax keyword cNormal CHI conceal cchar=χ
syntax keyword cNormal PSI conceal cchar=ψ
syntax keyword cNormal OMEGA conceal cchar=ω
syntax keyword cNormal NABLA conceal cchar=∇

hi link cNiceFunction Function
hi link cNiceOperator Operator
hi link cNiceStatement Statement
hi link cNiceKeyword Keyword
hi link cNiceType Type
hi link cNiceUnitHeader cUnitHeader
hi link cNormal Normal
hi! link Conceal Operator

setlocal conceallevel=1


