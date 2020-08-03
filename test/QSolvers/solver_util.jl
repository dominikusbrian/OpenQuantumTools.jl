using QuantumAnnealingTools, Test

u0 = PauliVec[1][2]
ρ0 = u0*u0'

@test u0 == QuantumAnnealingTools.build_u0(u0, :v, vectorize=false)
@test ρ0 == QuantumAnnealingTools.build_u0(u0, :m, vectorize=false)
@test ρ0 == QuantumAnnealingTools.build_u0(ρ0, :m, vectorize=false)
@test ρ0[:] == QuantumAnnealingTools.build_u0(ρ0, :m, vectorize=true)
