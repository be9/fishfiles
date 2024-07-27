function randompitch -d "Get a random pitch"
    argparse 'x/except=' 'c/count=' -- $argv
    or return

    set all_pitches C 'C#' D Eb E F 'F#' G 'G#' A Bb B

    if set -q _flag_except
        set idx (contains -i -- $_flag_except $all_pitches)
        if test -z "$idx"
            echo "Invalid pitch '$_flag_except'"
            return 1
        end
        set -e all_pitches[$idx]
    end

    # Shuffle pitches
    set c (count $all_pitches)
    for i in (seq $c)
        set j (random 1 $c)

        set z $all_pitches[$i]
        set all_pitches[$i] $all_pitches[$j]
        set all_pitches[$j] $z
    end

    set count 1
    if set -q _flag_count
        set count $_flag_count
    end

    echo $all_pitches[1..$count]
end
