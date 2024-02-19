def main [
    path: string, 
    out: string,
    type: string,
    styles: string = "stylesheet.css"
] {
    let parsed = $path | path parse
    let expanded = $path | path expand

    let outDir = [$out, $parsed.stem] | path join
    let outFile = [$outDir, $"($parsed.stem).($type)"] | path join

    if ($parsed.extension != "md") {
        return
    }

    if (not ($outDir | path exists)) {
        mkdir -v $outDir
    }

    pandoc $expanded -o $outFile -t $type -s $"--css=($styles)"
}

def run-watch [out: string, type: string = "html"] {
    watch . { |op, path| nu ./br.nu $path $out $type }
}
