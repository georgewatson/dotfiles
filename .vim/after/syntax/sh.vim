" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear shOperator

"syntax match shOperator "\<is\>"

syntax match shNiceOperator "\<in\>" conceal cchar=∈
"syntax match shNiceOperator "\<or\>" conceal cchar=∨
"syntax match shNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
"syntax match shNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=¬
" Or, don't include the space, so "not a" becomes "¬ a"
"syntax match shNiceOperator "\%(is \)\@<!\<not\>" conceal cchar=¬
"syntax match shNiceOperator "\<not in\>" conceal cchar=∉

" Inferior to FiraCode ligatures
"syntax match shNiceOperator "<=" conceal cchar=≤
"syntax match shNiceOperator ">=" conceal cchar=≥
"" only conceal “==” if alone, to avoid concealing SCM conflict markers
"syntax match shNiceOperator "=\@<!===\@!" conceal cchar=≡
"syntax match shNiceOperator "!=" conceal cchar=≢

"syntax keyword shNiceKeyword None conceal cchar=Ø

"syntax keyword shNiceOperator sum conceal cchar=∑
"syntax match shNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
"syntax match shNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

"syntax keyword shNiceOperator lambda conceal cchar=λ
syntax keyword shNiceOperator for conceal cchar=∀
syntax keyword shNiceOperator do conceal cchar={
syntax keyword shNiceOperator done conceal cchar=}
syntax keyword shNiceOperator return conceal cchar=↲
"syntax keyword shNiceOperator if conceal cchar=?
syntax keyword shNiceOperator then conceal cchar={
syntax keyword shNiceOperator fi conceal cchar=}
syntax keyword shNiceOperator if conceal cchar=▸
"syntax keyword shNiceOperator elif conceal cchar=↳
syntax keyword shNiceOperator elif conceal cchar=▹
"syntax keyword shNiceOperator else conceal cchar=✘
syntax keyword shNiceOperator else conceal cchar=∎
"syntax keyword shNiceOperator break conceal cchar=↯
"syntax keyword shNiceOperator def conceal cchar=⁕
"syntax keyword shNiceOperator class conceal cchar=§
syntax match shNiceOperator "\<echo\>" conceal cchar=»

syntax keyword shNormal alpha conceal cchar=α
syntax keyword shNormal beta conceal cchar=β
syntax keyword shNormal Gamma conceal cchar=Γ
syntax keyword shNormal gamma conceal cchar=γ
syntax keyword shNormal Delta conceal cchar=Δ
syntax keyword shNormal delta conceal cchar=δ
syntax keyword shNormal epsilon conceal cchar=ε
syntax keyword shNormal zeta conceal cchar=ζ
syntax keyword shNormal eta conceal cchar=η
syntax keyword shNormal Theta conceal cchar=ϴ
syntax keyword shNormal theta conceal cchar=θ
syntax keyword shNormal kappa conceal cchar=κ
syntax keyword shNormal lambda conceal cchar=λ
syntax keyword shNormal mu conceal cchar=μ
syntax keyword shNormal nu conceal cchar=ν
syntax keyword shNormal Xi conceal cchar=Ξ
syntax keyword shNormal xi conceal cchar=ξ
syntax keyword shNormal Pi conceal cchar=Π
syntax keyword shNormal rho conceal cchar=ρ
syntax keyword shNormal sigma conceal cchar=σ
syntax keyword shNormal tau conceal cchar=τ
syntax keyword shNormal upsilon conceal cchar=υ
syntax keyword shNormal Phi conceal cchar=Φ
syntax keyword shNormal phi conceal cchar=φ
syntax keyword shNormal chi conceal cchar=χ
syntax keyword shNormal Psi conceal cchar=Ψ
syntax keyword shNormal psi conceal cchar=ψ
syntax keyword shNormal Omega conceal cchar=Ω
syntax keyword shNormal omega conceal cchar=ω
syntax keyword shNormal nabla conceal cchar=∇

syntax keyword shNormal ALPHA conceal cchar=α
syntax keyword shNormal BETA conceal cchar=β
syntax keyword shNormal GAMMA conceal cchar=γ
syntax keyword shNormal DELTA conceal cchar=δ
syntax keyword shNormal EPSILON conceal cchar=ε
syntax keyword shNormal ZETA conceal cchar=ζ
syntax keyword shNormal ETA conceal cchar=η
syntax keyword shNormal THETA conceal cchar=θ
syntax keyword shNormal KAPPA conceal cchar=κ
syntax keyword shNormal LAMBDA conceal cchar=λ
syntax keyword shNormal MU conceal cchar=μ
syntax keyword shNormal NU conceal cchar=ν
syntax keyword shNormal XI conceal cchar=ξ
syntax keyword shNormal RHO conceal cchar=ρ
syntax keyword shNormal SIGMA conceal cchar=σ
syntax keyword shNormal TAU conceal cchar=τ
syntax keyword shNormal UPSILON conceal cchar=υ
syntax keyword shNormal PHI conceal cchar=φ
syntax keyword shNormal CHI conceal cchar=χ
syntax keyword shNormal PSI conceal cchar=ψ
syntax keyword shNormal OMEGA conceal cchar=ω
syntax keyword shNormal NABLA conceal cchar=∇

hi link shNiceOperator Operator
hi link shNiceStatement Statement
hi link shNiceKeyword Keyword
hi link shNormal Normal
hi! link Conceal Operator

setlocal conceallevel=2

