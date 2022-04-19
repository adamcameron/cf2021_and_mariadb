<cfscript>
import org.group.app2.Parent
import com.corp.app1.Child

p = new Parent()
writeDump(getMetadata(p).name) // org.group.app2.parent (CORRECTish)


c = new Child() // errors with Could not find the ColdFusion component or interface Parent.
</cfscript>
