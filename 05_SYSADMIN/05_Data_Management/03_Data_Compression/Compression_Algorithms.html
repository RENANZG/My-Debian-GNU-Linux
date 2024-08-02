<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>File Systems Forensic Comparison</title>
<style>
  table {
    width: 100%;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: left;
  }
  th {
    background-color: #f2f2f2;
  }
</style>
</head>
<body>

<h2>Compression Algorithm Comparison</h2>
<table><thead>
  <tr>
    <th>Compression Algorithm</th>
    <th>Common Use Case</th>
    <th>Supported File Formats</th>
    <th>1GB File (Before &amp; After)</th>
    <th>Compression Ratio</th>
    <th>Speed (MB/s)</th>
    <th>Decompression Speed (MB/s)</th>
    <th>Multicore Support</th>
  </tr></thead>
<tbody>
  <tr>
    <td>No compression</td>
    <td>When speed is more important than space</td>
    <td>N/A</td>
    <td>1GB -&gt; 1GB</td>
    <td>N/A</td>
    <td>1000 MB/s</td>
    <td>N/A</td>
    <td>N/A</td>
  </tr>
  <tr>
    <td><a href="https://github.com/madler/pigz">gzip</a></td>
    <td>General-purpose compression</td>
    <td>gz, tar.gz</td>
    <td>1GB -&gt; 370MB</td>
    <td>2.7:1</td>
    <td>50-100 MB/s</td>
    <td>150-250 MB/s</td>
    <td>No</td>
  </tr>
  <tr>
    <td><a href="https://github.com/madler/pigz">parallel gzip</a></td>
    <td>General-purpose compression</td>
    <td>gz, tar.gz</td>
    <td>1GB -&gt; 370MB</td>
    <td>2.7:1</td>
    <td>150-200 MB/s</td>
    <td>250-400 MB/s</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td><a href="https://github.com/kjn/pbzip2">bzip2</a></td>
    <td>High compression ratio for archives</td>
    <td>bz2, tar.bz2</td>
    <td>1GB -&gt; 330MB</td>
    <td>3.0:1</td>
    <td>5-10 MB/s</td>
    <td>20-50 MB/s</td>
    <td>No</td>
  </tr>
  <tr>
    <td><a href="https://github.com/kjn/pbzip2">parallel bzip2</a></td>
    <td>High compression ratio for archives</td>
    <td>bz2, tar.bz2</td>
    <td>1GB -&gt; 330MB</td>
    <td>3.0:1</td>
    <td>20-50 MB/s</td>
    <td>50-100 MB/s</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td><a href="https://www.lzop.org/">lzo</a></td>
    <td>Realtime compression</td>
    <td>tar.lzo</td>
    <td>1GB -&gt; 480MB</td>
    <td>2.1:1</td>
    <td>400-500 MB/s</td>
    <td>800-1000 MB/s</td>
    <td>No</td>
  </tr>
  <tr>
    <td><a href="https://www.7-zip.org/">LZMA</a></td>
    <td>Maximum compression for archives</td>
    <td>7z, tar.xz</td>
    <td>1GB -&gt; 250MB</td>
    <td>4.0:1</td>
    <td>5-10 MB/s</td>
    <td>20-30 MB/s</td>
    <td>No</td>
  </tr>
  <tr>
    <td><a href="https://www.7-zip.org/">LZMA2</a></td>
    <td>Maximum compression for archives</td>
    <td>7z, tar.xz</td>
    <td>1GB -&gt; 220MB</td>
    <td>4.5:1</td>
    <td>10-20 MB/s</td>
    <td>20-30 MB/s</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td><a href="https://tukaani.org/xz/">xz</a></td>
    <td>Maximum compression for archives</td>
    <td>xz, tar.xz</td>
    <td>1GB -&gt; 250MB</td>
    <td>4.0:1</td>
    <td>5-10 MB/s</td>
    <td>20-30 MB/s</td>
    <td>No</td>
  </tr>
  <tr>
    <td><a href="https://tukaani.org/xz/">parallel xz</a></td>
    <td>Maximum compression for archives</td>
    <td>xz, tar.xz</td>
    <td>1GB -&gt; 250MB</td>
    <td>4.0:1</td>
    <td>20-50 MB/s</td>
    <td>40-100 MB/s</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td><a href="https://www.nongnu.org/lzip/lzip.html">lzip</a></td>
    <td>High compression ratio for large archives</td>
    <td>lz</td>
    <td>1GB -&gt; 330MB</td>
    <td>3.0:1</td>
    <td>5-10 MB/s</td>
    <td>20-30 MB/s</td>
    <td>No</td>
  </tr>
  <tr>
    <td><a href="https://www.nongnu.org/lzip/lzip.html">parallel lzip</a></td>
    <td>High compression ratio for large archives</td>
    <td>lz</td>
    <td>1GB -&gt; 330MB</td>
    <td>3.0:1</td>
    <td>10-20 MB/s</td>
    <td>20-50 MB/s</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td><a href="https://github.com/ckolivas/lrzip">lrzip</a></td>
    <td>Compressing very large files</td>
    <td>lrz</td>
    <td>1GB -&gt; 250MB</td>
    <td>4.0:1</td>
    <td>5-10 MB/s</td>
    <td>10-20 MB/s</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td><a href="https://github.com/lz4/lz4">lz4</a></td>
    <td>Realtime compression</td>
    <td>lz4</td>
    <td>1GB -&gt; 480MB</td>
    <td>2.1:1</td>
    <td>400-500 MB/s</td>
    <td>800-1000 MB/s</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td><a href="https://facebook.github.io/zstd/">zstd</a></td>
    <td>General-purpose compression</td>
    <td>zst</td>
    <td>1GB -&gt; 350MB</td>
    <td>2.9:1</td>
    <td>200-300 MB/s</td>
    <td>400-500 MB/s</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td><a href="https://facebook.github.io/zstd/">parallel zstd</a></td>
    <td>General-purpose compression</td>
    <td>zst</td>
    <td>1GB -&gt; 350MB</td>
    <td>2.9:1</td>
    <td>200-300 MB/s</td>
    <td>400-500 MB/s</td>
    <td>Yes</td>
  </tr>
</tbody></table>

</body>
</html>
