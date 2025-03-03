<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Comparison of IPFS, BitTorrent, and HTTP</title>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>

<h2>Comparison of IPFS, BitTorrent, and HTTP</h2>

<table>
  <tr>
    <th>Criteria</th>
    <th>IPFS</th>
    <th>BitTorrent</th>
    <th>HTTP</th>
  </tr>
  <tr>
    <td><strong>File Retrieval</strong></td>
    <td>Content-based addressing</td>
    <td>Location-based (via trackers or DHT)</td>
    <td>Location-based (via URLs)</td>
  </tr>
  <tr>
    <td><strong>Centralization</strong></td>
    <td>Decentralized</td>
    <td>Decentralized (but relies on trackers or DHT)</td>
    <td>Centralized (servers)</td>
  </tr>
  <tr>
    <td><strong>Availability</strong></td>
    <td>High (files are distributed across nodes)</td>
    <td>Depends on seeders</td>
    <td>Depends on server availability</td>
  </tr>
  <tr>
    <td><strong>Cost</strong></td>
    <td>Lower cost (no need for centralized infrastructure)</td>
    <td>Lower cost (peer-to-peer sharing)</td>
    <td>Higher cost (server maintenance and bandwidth)</td>
  </tr>
  <tr>
    <td><strong>Performance</strong></td>
    <td>High (parallel chunk retrieval)</td>
    <td>High (parallel chunk retrieval)</td>
    <td>Depends on server load and bandwidth</td>
  </tr>
  <tr>
    <td><strong>Scalability</strong></td>
    <td>High (distributed storage and retrieval)</td>
    <td>High (distributed file sharing)</td>
    <td>Limited by server capacity</td>
  </tr>
  <tr>
    <td><strong>Security</strong></td>
    <td>High (content-based addressing, encryption)</td>
    <td>Moderate (reliance on trackers, potential for malicious peers)</td>
    <td>Moderate (depends on server security)</td>
  </tr>
  <tr>
    <td><strong>User Experience</strong></td>
    <td>Requires setup (e.g., IPFS node, wallet)</td>
    <td>Requires setup (e.g., BitTorrent client)</td>
    <td>Simple (browser-based access)</td>
  </tr>
  <tr>
    <td><strong>Incentivization</strong></td>
    <td>Yes (e.g., Filecoin for storage incentives)</td>
    <td>Yes (tit-for-tat, BitTorrent Token)</td>
    <td>No (centralized model)</td>
  </tr>
  <tr>
    <td><strong>Use Cases</strong></td>
    <td>Decentralized web, blockchain storage, file sharing</td>
    <td>File sharing, large file distribution</td>
    <td>Web browsing, file downloads</td>
  </tr>
</table>

</body>
</html>