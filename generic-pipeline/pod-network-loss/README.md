# Pod Network Loss

## Experiment Metadata

<table>
<tr>
<th> Name </th>
<th> Description </th>
<th> Documentation Link </th>
</tr>
<tr>
 <td> Pod Network Loss </td>
 <td> This experiment injects chaos to disrupt network connectivity to kubernetes pods.The application pod should be healthy once chaos is stopped. It causes loss of access to application replica by injecting packet loss using pumba </td>
 <td>  <a href="https://docs.litmuschaos.io/docs/pod-network-loss/"> Here </a> </td>
 </tr>
 </table>

 ### Pipeline Runs

 
| Job ID |   Test Description         | Execution Time | Release Tag   | Test Result   |
 |---------|---------------------------| --------------|--------|--------|
|     <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/"></a>           |  Inject Packet Loss Into Application Pod           | Sun Jul 26 05:06:25 2020(IST)  | ci | Passed :smiley: |
 |    <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/"></a>   |  Inject Packet Loss Into Application Pod           |  Sun Jul 26 05:01:48 2020(IST)     |ci  |Passed :smiley:  |
