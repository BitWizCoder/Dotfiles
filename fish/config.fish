if status is-interactive
    # Commands to run in interactive sessions can go here
end


set -g fish_greeting

oh-my-posh init fish --config ~/.omp/themes/craver.omp.json | source
