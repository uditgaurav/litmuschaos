# Pod Delete

## Experiment Metadata

<table>
<tr>
<th> Name </th>
<th> Description </th>
<th> Documentation Link </th>
</tr>
<tr>
 <td> Pod Delete </td>
 <td> This experiment causes (forced/graceful) pod failure of random replicas of an application deployment. It tests deployment sanity (replica availability & uninterrupted service) and recovery workflows of the application pod </td>
 <td>  <a href="https://docs.litmuschaos.io/docs/pod-delete/"> Here </a> </td>
 </tr>
 </table>

 ### Pipeline Runs

 
| Job ID |   Test Description         | Execution Time |Stage   |Test Result   |
 |---------|---------------------------| --------------|--------|
 |     <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/129034">129034</a>           |  Pod Delete experiment is used to kill a pod           | 12:12:12 IST  | Experiment | Passed |
