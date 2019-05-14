" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear pythonOperator

syntax match pythonOperator "\<is\>"

syntax match pyNiceOperator "\<in\>" conceal cchar=∈
syntax match pyNiceOperator "\<or\>" conceal cchar=∨
syntax match pyNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match pyNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=!
" Or, don't include the space, so "not a" becomes "¬ a"
"syntax match pyNiceOperator "\%(is \)\@<!\<not\>" conceal cchar=¬
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉

" Inferior to FiraCode ligatures
"syntax match pyNiceOperator "<=" conceal cchar=≤
"syntax match pyNiceOperator ">=" conceal cchar=≥
"" only conceal “==” if alone, to avoid concealing SCM conflict markers
"syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡
"syntax match pyNiceOperator "!=" conceal cchar=≢

syntax keyword pyNiceKeyword None conceal cchar=Ø

syntax keyword pyNiceKeyword True conceal cchar=𝐓
syntax keyword pyNiceKeyword False conceal cchar=𝐅

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax match pyNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

syntax match pyNiceOperator "*" conceal cchar=×
syntax match pyNiceOperator "\*\*" conceal cchar=^

syntax keyword pyNiceOperator lambda conceal cchar=λ
syntax keyword pyNiceOperator for conceal cchar=∀
syntax keyword pyNiceOperator return conceal cchar=↲
"syntax keyword pyNiceOperator if conceal cchar=?
syntax keyword pyNiceOperator if conceal cchar=▸
"syntax keyword pyNiceOperator elif conceal cchar=↳
syntax keyword pyNiceOperator elif conceal cchar=▹
"syntax keyword pyNiceOperator else conceal cchar=✘
syntax keyword pyNiceOperator else conceal cchar=∎
"syntax keyword pyNiceOperator break conceal cchar=↯
syntax keyword pyNiceOperator def conceal cchar=λ
"syntax keyword pyNiceOperator def conceal cchar=⁕
"
syntax keyword pyNiceOperator class conceal cchar=§

syntax keyword pyNiceFunction str conceal cchar=“
syntax keyword pyNiceFunction int conceal cchar=ℤ
syntax keyword pyNiceFunction float conceal cchar=ℝ

syntax keyword pyNiceFunction map conceal cchar=ⓜ

syntax keyword pyNormal alpha conceal cchar=α
syntax keyword pyNormal beta conceal cchar=β
syntax keyword pyNormal Gamma conceal cchar=Γ
syntax keyword pyNormal gamma conceal cchar=γ
syntax keyword pyNormal Delta conceal cchar=Δ
syntax keyword pyNormal delta conceal cchar=δ
syntax keyword pyNormal epsilon conceal cchar=ε
syntax keyword pyNormal zeta conceal cchar=ζ
syntax keyword pyNormal eta conceal cchar=η
syntax keyword pyNormal Theta conceal cchar=ϴ
syntax keyword pyNormal theta conceal cchar=θ
syntax keyword pyNormal kappa conceal cchar=κ
syntax keyword pyNormal lambda conceal cchar=λ
syntax keyword pyNormal mu conceal cchar=μ
syntax keyword pyNormal nu conceal cchar=ν
syntax keyword pyNormal Xi conceal cchar=Ξ
syntax keyword pyNormal xi conceal cchar=ξ
syntax keyword pyNormal Pi conceal cchar=Π
syntax keyword pyNormal rho conceal cchar=ρ
syntax keyword pyNormal sigma conceal cchar=σ
syntax keyword pyNormal tau conceal cchar=τ
syntax keyword pyNormal upsilon conceal cchar=υ
syntax keyword pyNormal Phi conceal cchar=Φ
syntax keyword pyNormal phi conceal cchar=φ
syntax keyword pyNormal chi conceal cchar=χ
syntax keyword pyNormal Psi conceal cchar=Ψ
syntax keyword pyNormal psi conceal cchar=ψ
syntax keyword pyNormal Omega conceal cchar=Ω
syntax keyword pyNormal omega conceal cchar=ω
syntax keyword pyNormal nabla conceal cchar=∇

syntax keyword pyNormal ALPHA conceal cchar=α
syntax keyword pyNormal BETA conceal cchar=β
syntax keyword pyNormal GAMMA conceal cchar=γ
syntax keyword pyNormal DELTA conceal cchar=δ
syntax keyword pyNormal EPSILON conceal cchar=ε
syntax keyword pyNormal ZETA conceal cchar=ζ
syntax keyword pyNormal ETA conceal cchar=η
syntax keyword pyNormal THETA conceal cchar=θ
syntax keyword pyNormal KAPPA conceal cchar=κ
syntax keyword pyNormal LAMBDA conceal cchar=λ
syntax keyword pyNormal MU conceal cchar=μ
syntax keyword pyNormal NU conceal cchar=ν
syntax keyword pyNormal XI conceal cchar=ξ
syntax keyword pyNormal RHO conceal cchar=ρ
syntax keyword pyNormal SIGMA conceal cchar=σ
syntax keyword pyNormal TAU conceal cchar=τ
syntax keyword pyNormal UPSILON conceal cchar=υ
syntax keyword pyNormal PHI conceal cchar=φ
syntax keyword pyNormal CHI conceal cchar=χ
syntax keyword pyNormal PSI conceal cchar=ψ
syntax keyword pyNormal OMEGA conceal cchar=ω
syntax keyword pyNormal NABLA conceal cchar=∇

hi link pyNiceFunction Function
hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi link pyNormal Normal
hi! link Conceal Operator

setlocal conceallevel=1

