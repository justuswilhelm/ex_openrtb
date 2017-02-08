defmodule ExOpenRTB.RegsTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Regs{
    coppa: 1,
  }, :regs
end
