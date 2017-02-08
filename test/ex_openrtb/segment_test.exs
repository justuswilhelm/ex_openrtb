defmodule ExOpenRTB.SegmentTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Segment{
    id: "12341318394918",
    name: "auto intenders"
  }, :segment
end
