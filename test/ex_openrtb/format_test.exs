defmodule ExOpenRTB.FormatTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Format{
    w: 100,
    h: 100,
  }, :format
end
