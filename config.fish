
#Autostart niri-wm
if status is-login
	and test (tty) = "/dev/tty1"
	and test -z "$DISPLAY"
	and test -z "$WAYLAND_DISPLAY"


	#	exec niri
end



if status is-interactive
fish_vi_key_bindings
pyenv init - | source
# Commands to run in interactive sessions can go here
starship init fish | source
end
set -gx AWS_PROFILE terraform-admin
# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
