theme: Architect
# Container Kill

## Experiment Metadata
<table>
<tr>
<th> Name </th>
<th> Description </th>
<th> Documentation Link </th>
</tr>
<tr>
 <td> Container Kill </td>
 <td> This experiment executes SIGKILL on container of random replicas of an application deployment. It tests the deployment sanity (replica availability & uninterrupted service) and recovery workflows of an application. </td>
 <td>  <a href="https://docs.litmuschaos.io/docs/container-kill/"> Here </a> </td>
 </tr>
 </table>

 ### Pipeline Runs
 

| Job ID |   Test Description         | Execution Time | Release Tag   | Test Result   |
 |---------|---------------------------| --------------|--------|--------|
|     <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/182991">182991</a>           |  Kill one container in the application pod           | Mon Jul 27 04:56:48 2020(IST)  | ci | Passed :smiley: |
 |    <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/"></a>   |  Kill one container in the application pod           |  Sun Jul 26 00:14:56 2020(IST)     |ci  |Passed :smiley:  |
