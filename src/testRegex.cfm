<cfscript>
    s = ""
    pattern = ".*"
    writeDump([
        reMatch = s.reMatchNoCase(pattern),
        matches = s.matches(pattern),
        split = s.split(pattern)
    ])
</cfscript>
