<h1>Find Files using the Find Command</h1>

<p><code>find &lt;options&gt; &lt;path&gt; &lt;expression&gt;</code></p>

<h2>Examples</h2>
<p>To look for runlevel files using the <code>find</code> command:</p>
<pre><code>find / -name runlevel*</code></pre>

<p>To search for all the symbolic links on the host:</p>
<pre><code>find / -type l</code></pre>

<p>To find all symbolic links whose filenames end with ".service":</p>
<pre><code>find / -type l -name *.service</code></pre>

<h2>Find Files by Pattern</h2>
<p>To find files on Linux using a pattern:</p>
<pre><code>find &lt;path&gt; -name ".&lt;extension&gt;"</code></pre>
<p>Example:</p>
<pre><code>find / -name "*.js"</code></pre>

<h2>Find Files by Owner</h2>
<p>To find files created by a certain user:</p>
<pre><code>find &lt;path&gt; -user &lt;user&gt;</code></pre>
<p>Example:</p>
<pre><code>find / -user john</code></pre>

<p>To delete all files owned by a user:</p>
<pre><code>find / -user john -delete</code></pre>

<h2>Find Files by Permissions</h2>
<p>To find all files with full permissions (777):</p>
<pre><code>find / -perm 777</code></pre>

<h2>Find Files by Size</h2>
<p>To find files greater than 1 GB:</p>
<pre><code>find / -size +1G</code></pre>
<p>To find files smaller than 10 MB:</p>
<pre><code>find / -size -10M</code></pre>
<p>To find files exactly 1024 KB:</p>
<pre><code>find / -size 1024k</code></pre>

<h2>Find Files by Modification Date</h2>
<p>To find files modified exactly 3 hours ago:</p>
<pre><code>find / -mtime 3</code></pre>
<p>To find files modified more than one week ago:</p>
<pre><code>find / -mtime +7</code></pre>
<p>To find files modified less than two days ago:</p>
<pre><code>find / -mtime -2</code></pre>

<h2>Find Files with Dynamic Depth</h2>
<p>To restrict file searches to the current directory:</p>
<pre><code>find / -maxdepth 1</code></pre>
<p>Example to search for files with a given name in the current directory:</p>
<pre><code>find . -maxdepth 1 -name *.tar</code></pre>

<h2>Chaining Find with -exec</h2>
<p>To find all files modified less than one minute ago:</p>
<pre><code>find /home/user -mmin -1</code></pre>
<p>To delete all files modified less than one minute ago:</p>
<pre><code>find /home/user -mmin -1 -exec echo rm -f '{}' \;</code></pre>
<p>When ready to delete:</p>
<pre><code>find /home/user -mmin -1 -exec rm -f '{}' \;</code></pre>

<h2>Find Files using the Locate Command</h2>
<p>To install <code>locate</code> on Debian 10:</p>
<pre><code>sudo apt-get install mlocate</code></pre>
<p>To update your <code>mlocate</code> database:</p>
<pre><code>sudo updatedb</code></pre>
<p>To find a configuration file:</p>
<pre><code>locate updatedb.conf</code></pre>
<p>To isolate all files starting with runlevel followed by a number:</p>
<pre><code>locate --regex runlevel[0-9]+</code></pre>

<h2>Search Files by Content using Grep</h2>
<p>To search all files having “error” in their content in your home directory:</p>
<pre><code>grep -r error /home/user</code></pre>
<p>To find the file matching the ‘abc’ pattern:</p>
<pre><code>grep -r -E "abc.*" --color /home/user</code></pre>

<h2>Find Files using Which</h2>
<p>To search for files associated with the “ls” command:</p>
<pre><code>which ls</code></pre>
<p>Example output:</p>
<pre><code>/usr/bin/ls</code></pre>

<h2>Locate Binaries using Whereis</h2>
<p>To execute <code>whereis</code>:</p>
<pre><code>whereis ls</code></pre>
