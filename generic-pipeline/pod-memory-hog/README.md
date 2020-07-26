# Pod Memory Hog

## Experiment Metadata

<table>
<tr>
<th> Name </th>
<th> Description </th>
<th> Documentation Link </th>
</tr>
<tr>
 <td> Pod Memory Hog </td>
 <td> This experiment causes Memory resource consumption on specified application containers by using dd command which will used to consume memory of the application container for certain duration of time. It can test the application's resilience to potential slowness/unavailability of some replicas due to high Memory load.</td>
 <td>  <a href="https://docs.litmuschaos.io/docs/pod-memory-hog/"> Here </a> </td>
 </tr>
 </table>

 ### Pipeline Runs

 
| Job ID |   Test Description         | Execution Time | Release Tag   | Test Result   |
 |---------|---------------------------| --------------|--------|--------|
|     <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/182993">182993</a>           |  Consume memory resources on the application container           | Mon Jul 27 05:00:38 2020(IST)  | ci | Passed :smiley: |
 |    <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/"></a>   |  Kills the kubelet service on the application node           |  Sun Jul 26 04:36:39 2020(IST)     |ci  |Passed :smiley:  |
