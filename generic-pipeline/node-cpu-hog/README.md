# Node CPU Hog

## Experiment Metadata

<table>
<tr>
<th> Name </th>
<th> Description </th>
<th> Documentation Link </th>
</tr>
<tr>
 <td> Node Cpu Hog </td>
 <td> This experiment causes CPU resource exhaustion on the Kubernetes node. The experiment aims to verify resiliency of applications whose replicas may be evicted on account on nodes turning unschedulable (Not Ready) due to lack of CPU resources. </td>
 <td>  <a href="https://docs.litmuschaos.io/docs/node-cpu-hog/"> Here </a> </td>
 </tr>
 </table>

 ### Pipeline Runs

 
| Job ID |   Test Description         | Execution Time | Release Tag   | Test Result   |
 |---------|---------------------------| --------------|--------|--------|
|     <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/182999">182999</a>           |  Exhaust CPU resources on the Kubernetes Node           | Mon Jul 27 05:15:10 2020(IST)  | ci | Passed :smiley: |
 |    <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/"></a>   |  Kills the kubelet service on the application node           |  Sun Jul 26 03:27:12 2020(IST)     |ci  |Passed :smiley:  |
