
https://distrowatch.com/table.php?distribution=alpine<br>
https://wiki.alpinelinux.org/wiki/Alpine_Linux:Overview<br>
https://wiki.alpinelinux.org/wiki/Comparison_with_other_distros<br>

<table>
<thead>
  <tr>
    <th></th>
    <th> <br>Debian </th>
    <th> <br>Alpine</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>vastly larger dev &amp; user community</td>
    <td>it has a smaller filesystem footprint than stock Debian.</td>
  </tr>
  <tr>
    <td>working towards reproducible builds</td>
    <td>its slightly more memory efficient thanks to BusyBox and musl library</td>
  </tr>
  <tr>
    <td>better documentation</td>
    <td>lighter: community obsessed with footprint</td>
  </tr>
  <tr>
    <td>libc more compatible than musl, less likely to trigger bugs</td>
    <td>musl: more efficient libc alternative</td>
  </tr>
  <tr>
    <td>more trustworthy infrastructure</td>
    <td>simpler init system: OpenRC instead of systemd</td>
  </tr>
  <tr>
    <td>number of people who know its ins and outs</td>
    <td>lead dev &amp; founder is a Docker employee</td>
  </tr>
  <tr>
    <td></td>
    <td>Focus: Security, simplicity and resource efficiency</td>
  </tr>
  <tr>
    <td></td>
    <td>• Became popular due to Docker and micro-services trend
    • Alpine Docker image is ~4.5 MB </td>
  </tr>
  <tr>
    <td>Shell: bash</td>
    <td>Shell: ash</td>
  </tr>
  <tr>
    <td>Package Manager: deb</td>
    <td>Package Manager: apk</td>
  </tr>
<tr>
    <td></td>
    <td>All userland binaries are compiled as Position Independent Executables (PIE) with stack smashing protection.</td>
</tr>
</tbody>
</table>


Alpine 

• Init: OpenRC (not systemd) + Uses muscl libc instead of glibc 
• 