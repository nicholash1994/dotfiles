import XMonad

main = xmonad def 
    { modMask = mod4Mask
    , focusFollowsMouse = False
    , terminal = "urxvt" }
