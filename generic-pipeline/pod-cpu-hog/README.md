# Pod CPU Hog

## Experiment Metadata

<table>
<tr>
<th> Name </th>
<th> Description </th>
<th> Documentation Link </th>
</tr>
<tr>
 <td> Pod CPU Hog </td>
 <td> This experiment causes CPU resource consumption on specified application containers by starting one or more md5sum calculation process on the special file /dev/zero. It Can test the application's resilience to potential slowness/unavailability of some replicas due to high CPU load.</td>
 <td>  <a href="https://docs.litmuschaos.io/docs/pod-cpu-hog/"> Here </a> </td>
 </tr>
 </table>

 ### Pipeline Runs

 
| Job ID |   Test Description         | Execution Time | Release Tag   | Test Result   |
 |---------|---------------------------| --------------|--------|--------|
 |    <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/"></a>   |  Kills the kubelet service on the application node           |  Sun Jul 26 04:17:39 2020(IST)     |ci  |Passed :smiley:  |
