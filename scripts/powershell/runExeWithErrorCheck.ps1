Function RunExeWithErrorCheck {
    Param($exe)
    &$exe

    $ret = $?

    If (!$ret) {
        Write-Host "Unable to run exe..."
        Exit 99
    }
}
