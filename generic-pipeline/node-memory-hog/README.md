# Node Memory Hog

## Experiment Metadata

<table>
<tr>
<th> Name </th>
<th> Description </th>
<th> Documentation Link </th>
</tr>
<tr>
<td> Node Memory Hog </td>
<td> This experiment causes Memory exhaustion on the Kubernetes node. The experiment aims to verify resiliency of applications whose replicas may be evicted on account on nodes turning unschedulable due to lack of Memory resources. </td>
<td>   <a href="https://docs.litmuschaos.io/docs/node-memory-hog/"> Here </a> </td>
</tr> 
</table>

### Pipeline Runs


| Job ID |   Test Description         | Execution Time | Release Tag   | Test Result   |
 |---------|---------------------------| --------------|--------|--------|
|     <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/"></a>           |  Kills the kubelet service on the application node           | Sun Jul 26 04:27:44 2020(IST)  | ci | Passed :smiley: |
 |    <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/"></a>   |  Kills the kubelet service on the application node           |  Sun Jul 26 04:14:57 2020(IST)     |ci  |Passed :smiley:  |
