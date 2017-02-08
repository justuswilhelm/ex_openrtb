defmodule ExOpenRTB.VideoTest do
  use ExUnit.Case, async: true
  import ExOpenRTB.Test

  test_decode %ExOpenRTB.Video{
    mimes: [
      "video/x-flv",
      "video/mp4",
      "application/x-shockwave-flash",
      "application/javascript",
    ],
    minduration: 5,
    maxduration: 30,
    protocols: [
      :vast_2,
      :vast_3,
    ],
    w: 640,
    h: 480,
    startdelay: 0,
    linearity: :linear,
    battr: [
      :user_interactive,
      :windows_dialog_or_alert_style,
    ],
    maxextended: 30,
    minbitrate: 300,
    maxbitrate: 1500,
    boxingallowed: true,
    playbackmethod: [
      :auto_play_sound_on,
      :click_to_play,
    ],
    delivery: [:progressive],
    pos: :above_fold,
    companionad: [
      %ExOpenRTB.Banner{
        w: 300,
        h: 250,
        id: "1234567893-1",
        pos: :above_fold,
        battr: [
          :user_interactive,
          :windows_dialog_or_alert_style,
        ],
        expdir: [
          :exp_dir_right,
          :exp_dir_down,
        ],
      },
      %ExOpenRTB.Banner{
        w: 728,
        h: 90,
        id: "1234567893-2",
        pos: :above_fold,
        battr: [
          :user_interactive,
          :windows_dialog_or_alert_style,
        ],
      },
    ],
    api: [
      :vpaid_1,
      :vpaid_2,
    ],
    companiontype: [
      :static_resource,
      :html_resource,
    ],
  }, :video
end
