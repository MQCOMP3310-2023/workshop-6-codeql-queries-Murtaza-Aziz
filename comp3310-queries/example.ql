/**
 * @name Comp3310 workshop 6 query
 * @kind problem
 * @problem.severity warning
 * @id java/example/empty-block
 */

import java

from MethodAccess call, Method method, string packageName, string typeName
where 
call.getMethod() = method and
method.hasName("nextLine") and 
method.getDeclaringType().hasQualifiedName(packageName, typeName) 
select call, packageName+","+typeName
