def main [
    path: string, 
    out: string,
    type: string,
    styles: string = "stylesheet.css"
] {
    let parsed = $path | path parse

    if ($parsed.extension != "md") {
        return
    }

    let expanded = $path | path expand

    let outDir = [$out, $parsed.stem] | path join
    let outFile = [$outDir, $"($parsed.stem).($type)"] | path join

    if (not ($outDir | path exists)) {
        mkdir -v $outDir
    }

    pandoc $expanded -o $outFile -t $type -s $"--css=($styles)"
}

def run-watch [out: string, type: string = "html"] {
    watch . { |op, path| nu ./br.nu $path $out $type }
}
