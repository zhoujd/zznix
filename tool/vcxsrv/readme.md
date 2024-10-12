XcXsrv Readme
==============

## office site url

```
<http://sourceforge.net/projects/vcxsrv/files/vcxsrv/1.16.2.0/>
<https://hpc.nmsu.edu/discovery/software/x11-forwarding/>
```

## autostart

```
create shorcut: "C:\Program Files\VcXsrv\vcxsrv.exe" :0 -multiwindow -clipboard -wgl -dpi 82
copy shortcut to: start -> run -> "shell:startup"
```

## Switches

```
(Extract from the help that is written to a log file via the command prompt and vcxsrv.exe -h )
Vcxsrv [:<display>] [option]
:display-number
        Vcxsrv runs as the given display-number, which defaults to 0.
        To run multiple instances, use unique display-numbers.  

-help                         prints message with these options
-a #                          default pointer acceleration (factor)
-ac                           disable access control restrictions
-audit int                    set audit trail level
-auth                         file select authorization file
-br                           create root window with black background
+bs                           enable any backing store support
-bs                           disable any backing store support
-cc int                       default color visual class
-nocursor                     disable the cursor
-core                         generate core dump on fatal error
-displayfd fd                 file descriptor to write display number to when ready to connect
-dpi [auto|int]               screen resolution set to native or this dpi
-dpms                         disables VESA DPMS monitor control
-deferglyphs [none|all|16]    defer loading of [no|all|16-bit] glyphs
-f #                          bell base (0-100)
-fc string                    cursor font
-fn string                    default font name
-fp string                    default font path
+iglx                         Allow creating indirect GLX contexts (default)
-iglx                         Prohibit creating indirect GLX contexts
-I                            ignore all remaining arguments
-nolisten string              don't listen on protocol
-listen string                listen on protocol
-noreset                      don't reset after last client exists
-background [none]            create root window with no background
-reset                        reset after last client exists
-pn                           accept failure to listen on all ports
-nopn                         reject failure to listen on all ports
-r                            turns off auto-repeat
r                             turns on auto-repeat
-render [default|mono|gray|color] set render color alloc policy
-retro                        start with classic stipple
-seat string                  seat to run on
-t #                          default pointer threshold (pixels/t)
-terminate                    terminate at server reset
-to #                         connection time out
-tst                          disable testing extensions
-wm                           WhenMapped default backing-store
-wr                           create root window with white background
+xinerama                     Enable XINERAMA extension
-xinerama                     Disable XINERAMA extension
-dumbSched                    Disable smart scheduling, enable old behavior
-schedInterval int            Set scheduler interval in msec
+extension name               Enable extension
-extension name               Disable extension
-query host-name              contact named host for XDMCP
-broadcast                    broadcast for XDMCP
-multicast [addr [hops]]      IPv6 multicast for XDMCP
-indirect host-name           contact named host for indirect XDMCP
-port port-num                UDP port number to send messages to
-from local-address           specify the local address to connect from
-once                         Terminate server after one session
-class display-class          specify display class to send in manage
-cookie xdm-auth-bits         specify the magic cookie for XDMCP
-displayID display-id         manufacturer display ID for request
[+-]accessx [ timeout [ timeout_mask [ feedback [ options_mask] ] ] ]
                                                                                         enable/disable accessx key sequences
-ardelay                      set XKB autorepeat delay
-arinterval                   set XKB autorepeat interval


VcXsrv Device Dependent Usage:

-[no]clipboard
      Enable [disable] the clipboard integration. Default is enabled.

-[no]clipboardprimary
          [Do not] map the PRIMARY selection to the windows clipboard.
          The CLIPBOARD selection is always mapped if -clipboard is enabled.
          Default is mapped.
-clipupdates num_boxes
          Use a clipping region to constrain shadow update blits to
          the updated region when num_boxes, or more, are in the
          updated region.
-depth bits_per_pixel
          Specify an optional bitdepth to use in fullscreen mode
          with a DirectDraw engine.
-[no]emulate3buttons [timeout]
          Emulate 3 button mouse with an optional timeout in
          milliseconds.
-engine engine_type_id
          Override the server's automatically selected engine type:
          1 - Shadow GDI
          4 - Shadow DirectDraw4 Non-Locking
-fullscreen
          Run the server in fullscreen mode.
-[no]hostintitle
          In multiwindow mode, add remote host names to window titles.
-ignoreinput
          Ignore keyboard and mouse input.
-[no]keyhook
          Grab special Windows keypresses like Alt-Tab or the Menu key.
-lesspointer
          Hide the windows mouse pointer when it is over any
          VcXsrv window. This prevents ghost cursors appearing when
          the Windows cursor is drawn on top of the X cursor
-logfile filename
          Write log messages to <filename>.
-logverbose verbosity
          Set the verbosity of log messages. [NOTE: Only a few messages
          respect the settings yet]
          0 - only print fatal error.
          1 - print additional configuration information.
          2 - print additional runtime information [default].
          3 - print debugging and tracing information.
-[no]multimonitors or -[no]multiplemonitors
          Use the entire virtual screen if multiple
          monitors are present.
-multiwindow
          Run the server in multi-window mode.
-nodecoration
          Do not draw a window border, title bar, etc. Windowed
          mode only.
-nounicodeclipboard
          Do not use Unicode clipboard even if on a NT-based platform.
-[no]primary
          When clipboard integration is enabled, map the X11 PRIMARY selection
          to the Windows clipboard. Default is enabled.
-refresh rate_in_Hz
          Specify an optional refresh rate to use in fullscreen mode
          with a DirectDraw engine.
-resize=none|scrollbars|randr 
          In windowed mode, [don't] allow resizing of the window. 'scrollbars'
          mode gives the window scrollbars as needed, 'randr' mode uses the RANR
          extension to resize the X screen. 'randr' is the default.
-rootless
          Run the server in rootless mode.
-screen scr_num [width height [x y] | [[WxH[+X+Y]][@m]] ]
          Enable screen scr_num and optionally specify a width and
          height and initial position for that screen. Additionally
          a monitor number can be specified to start the server on,
          at which point, all coordinates become relative to that
          monitor. Examples:
                    -screen 0 800x600+100+100@2 ; 2nd monitor offset 100,100 size 800x600
                    -screen 0 1024x768@3 ; 3rd monitor size 1024x768
                    -screen 0 @1 ; on 1st monitor using its full resolution (the default)
                    -silent-dup-error
          If another instance of VcXsrv with the same display number is running
          exit silently and don't display any error message.
-swcursor
          Disable the usage of the Windows cursor and use the X11 software
          cursor instead.
-[no]trayicon
          Do not create a tray icon. Default is to create one icon per screen. 
          You can globally disable tray icons with
-notrayicon, then enable it for specific screens with
-trayicon for those screens.
-[no]unixkill
          Ctrl+Alt+Backspace exits the X Server.
-[no]wgl
          Enable the GLX extension to use the native Windows WGL interface for hardware-accelerated OpenGL
-swrastwgl
          Enable the GLX extension to use the native Windows WGL interface 
          based on the swrast interface for accelerated OpenGL
-[no]winkill
          Alt+F4 exits the X Server.
-xkblayout XKBLayout
          Equivalent to XKBLayout in XF86Config files.
          For example: 
                   -xkblayout de
-xkbmodel XKBModel
          Equivalent to XKBModel in XF86Config files.
-xkboptions XKBOptions
          Equivalent to XKBOptions in XF86Config files.
-xkbrules XKBRules
          Equivalent to XKBRules in XF86Config files.
-xkbvariant XKBVariant
          Equivalent to XKBVariant in XF86Config files.
          For example: 
                    -xkbvariant nodeadkeys

```



