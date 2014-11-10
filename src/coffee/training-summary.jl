export TrainingSummary

type TrainingSummary <: Coffee
end

function enjoy(::TrainingSummary, ::Net, state::SolverState)
  summary = @sprintf("%06d :: obj-val = %.8f", state.iter, state.obj_val)
  @info(summary)
end
