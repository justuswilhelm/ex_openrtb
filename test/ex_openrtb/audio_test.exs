defmodule ExOpenRTB.AudioTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Audio{
    mimes: [
      "audio/mp4",
    ],
    minduration: 5,
    maxduration: 30,
    protocols: [
      :daast_1,
      :daast_1_wrapper,
    ],
    battr: [
      :user_interactive,
      :windows_dialog_or_alert_style,
    ],
    maxextended: 30,
    minbitrate: 300,
    maxbitrate: 1500,
    delivery: [:progressive],
    companionad: [
      %ExOpenRTB.Banner{
        w: 300, h: 250, id: "1234567893-1", pos: :above_fold,
        battr: [:user_interactive, :windows_dialog_or_alert_style],
        expdir: [:exp_dir_right, :exp_dir_down]
      },
      %ExOpenRTB.Banner{
        w: 728, h: 90, id: "1234567893-2", pos: :above_fold,
        battr: [:user_interactive, :windows_dialog_or_alert_style]
      }
    ],
    companiontype: [:static_resource, :html_resource]
  }, :audio
end
