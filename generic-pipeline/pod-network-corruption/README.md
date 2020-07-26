# Pod Network Corruption

## Experiment Metadata

<table>
<tr>
<th> Name </th>
<th> Description </th>
<th> Documentation Link </th>
</tr>
<tr>
 <td> Pod Network Corruption </td>
 <td> This chaos action Injects packet corruption on the specified container by starting a traffic control (tc) process with netem rules to add egress packet corruption. Corruption is injected via pumba library with command Pumba netem corruption by passing the relevant network interface, packet-corruption-percentage, chaos duration, and regex filter for the container name. </td>
 <td>  <a href="https://docs.litmuschaos.io/docs/pod-network-corruption/"> Here </a> </td>
 </tr>
 </table

### Pipeline Runs


| Job ID |   Test Description         | Execution Time | Release Tag   | Test Result   |
 |---------|---------------------------| --------------|--------|--------|
 |    <a href= "https://gitlab.mayadata.io/litmuschaos/litmus-e2e/-/jobs/182994">182994</a>   |  Inject Network Packet Corruption Into Application Pod           |  Mon Jul 27 05:02:28 2020(IST)     |ci  |Passed :smiley:  |
