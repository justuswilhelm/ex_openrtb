defmodule ExOpenRTB.BannerTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Banner{
      w: 728,
      h: 90,
      pos: :above_fold,
      btype: [4],
      battr: [:windows_dialog_or_alert_style],
      api: [3],
  }, :banner
end
