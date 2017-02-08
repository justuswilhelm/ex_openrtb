defmodule ExOpenRTB.MetricTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Metric{
    type: "CTR",
    value: 1.0,
    vendor: "EXCHANGE",
  }, :metric
end
