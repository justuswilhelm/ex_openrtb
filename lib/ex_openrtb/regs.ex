defmodule ExOpenRTB.Regs do
  import ExOpenRTB.Decoder.Helper

  defstruct [
    :coppa,  # TODO 0/1 validation Justus 2017-02-06
    :ext,
  ]
end
