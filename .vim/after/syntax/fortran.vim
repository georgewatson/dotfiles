" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear fortranOperator
syntax clear fortranType

syntax match fNiceOperator "\.or\." conceal cchar=∨
syntax match fNiceOperator "\.and\." conceal cchar=∧
syntax match fNiceOperator "\.not\. " conceal cchar=!

" Inferior to FiraCode ligatures
"syntax match fNiceOperator "<=" conceal cchar=≤
"syntax match fNiceOperator ">=" conceal cchar=≥
"syntax match fNiceOperator "=\@<!===\@!" conceal cchar=≡
"syntax match fNiceOperator "!=" conceal cchar=≢

syntax match fNiceOperator "\.le\." conceal cchar=≤
syntax match fNiceOperator "\.ge\." conceal cchar=≥
syntax match fNiceOperator "\.lt\." conceal cchar=<
syntax match fNiceOperator "\.gt\." conceal cchar=>
syntax match fNiceOperator "\.eq\." conceal cchar=≡

syntax keyword fNiceOperator sum conceal cchar=∑
syntax match fNiceOperator "\<sqrt\>" conceal cchar=√

syntax keyword fNiceOperator do conceal cchar=∀
syntax keyword fNiceOperator return conceal cchar=↲
syntax match fNiceOperator "\<else\%( \)\?if\>" conceal cchar=▹
syntax keyword fNiceOperator if conceal cchar=▸
syntax keyword fNiceOperator else conceal cchar=∎
"syntax keyword fNiceOperator exit conceal cchar=↯
syntax keyword fNiceOperator pure conceal cchar=◯
syntax keyword fNiceUnitheader function conceal cchar=λ
syntax keyword fNiceUnitHeader subroutine conceal cchar=★
syntax keyword fNiceUnitHeader module conceal cchar=§

syntax keyword pyNiceFunction str conceal cchar=“
syntax keyword fNiceType integer conceal cchar=ℤ
syntax keyword fNiceType real conceal cchar=ℝ
syntax match fNiceType "double precision" conceal cchar=𝔻
syntax keyword fNiceType complex conceal cchar=ℂ
" Using 𝔹 sometimes causes other concealed characters on the line to disappear
syntax keyword fNiceType logical conceal cchar=B
syntax keyword fNiceType character
syntax match fNiceType "\<implicit\%( none\)\?\>"
syntax keyword fNiceFunction int conceal cchar=ℤ
syntax match fNiceType "kind=" conceal cchar=_

syntax match fNiceType ",\? \?intent \?" conceal
syntax match fNiceType ",\? \?dimension \?" conceal

syntax match fNormal "(inout)" conceal cchar=⇄
syntax match fNormal "(in)" conceal cchar=→
syntax match fNormal "(out)" conceal cchar=←

syntax keyword fNiceKeyword then conceal cchar={
syntax match fNiceKeyword "\<end\%( \)\?if\>" conceal cchar=}
syntax match fNiceKeyword "\<end\%( \)\?do\>" conceal cchar=]
"syntax match fNiceKeyword "\<end\%( \)\?if\>" conceal cchar=◁
"syntax match fNiceKeyword "\<end\%( \)\?do\>" conceal cchar=↻
syntax match fNiceUnitHeader "\<end\%( \)\?\%(module\|function\|subroutine\)\>" conceal cchar=}

syntax keyword fNormal alpha conceal cchar=α
syntax keyword fNormal beta conceal cchar=β
syntax keyword fNormal Gamma conceal cchar=Γ
syntax keyword fNormal gamma conceal cchar=γ
syntax keyword fNormal Delta conceal cchar=Δ
syntax keyword fNormal delta conceal cchar=δ
syntax keyword fNormal epsilon conceal cchar=ε
syntax keyword fNormal zeta conceal cchar=ζ
syntax keyword fNormal eta conceal cchar=η
syntax keyword fNormal Theta conceal cchar=ϴ
syntax keyword fNormal theta conceal cchar=θ
syntax keyword fNormal kappa conceal cchar=κ
syntax keyword fNormal lambda conceal cchar=λ
syntax keyword fNormal mu conceal cchar=μ
syntax keyword fNormal nu conceal cchar=ν
syntax keyword fNormal Xi conceal cchar=Ξ
syntax keyword fNormal xi conceal cchar=ξ
syntax keyword fNormal Pi conceal cchar=Π
syntax keyword fNormal pi conceal cchar=π
syntax keyword fNormal rho conceal cchar=ρ
syntax keyword fNormal sigma conceal cchar=σ
syntax keyword fNormal tau conceal cchar=τ
syntax keyword fNormal upsilon conceal cchar=υ
syntax keyword fNormal Phi conceal cchar=Φ
syntax keyword fNormal phi conceal cchar=φ
syntax keyword fNormal chi conceal cchar=χ
syntax keyword fNormal Psi conceal cchar=Ψ
syntax keyword fNormal psi conceal cchar=ψ
syntax keyword fNormal Omega conceal cchar=Ω
syntax keyword fNormal omega conceal cchar=ω
syntax keyword fNormal nabla conceal cchar=∇

syntax keyword fNormal ALPHA conceal cchar=α
syntax keyword fNormal BETA conceal cchar=β
syntax keyword fNormal GAMMA conceal cchar=γ
syntax keyword fNormal DELTA conceal cchar=δ
syntax keyword fNormal EPSILON conceal cchar=ε
syntax keyword fNormal ZETA conceal cchar=ζ
syntax keyword fNormal ETA conceal cchar=η
syntax keyword fNormal THETA conceal cchar=θ
syntax keyword fNormal KAPPA conceal cchar=κ
syntax keyword fNormal LAMBDA conceal cchar=λ
syntax keyword fNormal MU conceal cchar=μ
syntax keyword fNormal NU conceal cchar=ν
syntax keyword fNormal XI conceal cchar=ξ
syntax keyword fNormal RHO conceal cchar=ρ
syntax keyword fNormal SIGMA conceal cchar=σ
syntax keyword fNormal TAU conceal cchar=τ
syntax keyword fNormal UPSILON conceal cchar=υ
syntax keyword fNormal PHI conceal cchar=φ
syntax keyword fNormal CHI conceal cchar=χ
syntax keyword fNormal PSI conceal cchar=ψ
syntax keyword fNormal OMEGA conceal cchar=ω
syntax keyword fNormal NABLA conceal cchar=∇

hi link fNiceFunction Function
hi link fNiceOperator Operator
hi link fNiceStatement Statement
hi link fNiceKeyword Keyword
hi link fNiceType Type
hi link fNiceUnitHeader fortranUnitHeader
hi link fNormal Normal
hi! link Conceal Operator

setlocal conceallevel=1


