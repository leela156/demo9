%dw 2.0
output application/json
import * from dw::core::Arrays
---
payload distinctBy($.department)map(item,index)->{
   "department": item.department,
   "count":payload countBy ($.department==item.department)
}






//here we want to know the department and the count of people under that department for that we used map to map the department and also used countBy of Dw core of arrays