<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TRIM, Wear-Leveling, VeraCrypt, and Linux</title>
</head>
<body>

  <h1>TRIM, Wear-Leveling, VeraCrypt, and Linux</h1>

  <h3>TRIM Operations and Wear-Leveling Considerations Under Linux with Veracrypt</h3>

  <p>While enabling TRIM (discard) on SSDs can improve performance and longevity by
    allowing the operating system to inform the drive of unused blocks, it introduces
    potential risks in scenarios where data security and plausible deniability are
    critical. When TRIM operations occur, an adversary may be able to identify which
    sectors contain free space, as TRIM explicitly marks these areas as unused.</p>
  
  <p>In addition, if the device uses a wear-leveling mechanism, VeraCrypt cannot
    guarantee that the oldest header is actually replaced, which can cause possible
    data leaks.</p>

  <h3>TRIM Security Risk</h3>

  <a href="https://veracrypt.fr/en/Trim%20Operation.html">Veracrypt - Trim Operation</a>

  <p>"Some storage devices (e.g., some solid-state drives, including USB flash drives)
    use so-called 'trim' operation to mark drive sectors as free e.g. when a file
    is deleted. Consequently, such sectors may contain unencrypted zeroes or other
    undefined data (unencrypted) even if they are located within a part of the drive
    that is encrypted by VeraCrypt."</p>

  <p>"Under Linux, VeraCrypt does not block the trim operation on volumes using the
    native Linux kernel cryptographic services, which is the default setting. To
    block TRIM on Linux, users should either enable the "do not use kernel cryptographic
    services" option in VeraCrypt's Preferences (applicable only to volumes mounted
    afterward) or use the <code>--mount-options=nokernelcrypto</code> switch in the
    command line when mounting."</p>

  <p>"In cases where trim operations occur, the adversary will be able to tell which
    sectors contain free space (and may be able to use this information for further
    analysis and attacks) and plausible deniability may be negatively affected. In
    order to avoid these issues, users should either disable trim in VeraCrypt settings
    as previously described or make sure VeraCrypt volumes are not located on drives
    that use the trim operation".</p>

  <a href="https://manpages.debian.org/bookworm/cryptsetup/crypttab.5.en.html">Crypttab Man Page</a>

  <p><b>The crypttab man page warns that enabling the discard option on
    encrypted devices can potentially leak information about the encrypted
    data.</b> This happens because SSD firmware may zero out unused blocks, making
    them identifiable and revealing patterns such as the filesystem type and used
    space. An attacker could use this minimal information to target smaller portions
    of encrypted data and potentially assist in breaking the encryption. However,
    the actual risk is unclear, as the leak may only offer limited help to an attacker.
    The warning advises disabling discard (or TRIM) to avoid such risks, especially
    if there's a need to prevent the exposure of unused sectors or hidden data. Once
    TRIM is executed, the discarded sectors remain detectable, and encrypted devices
    should avoid relying on functions that return zeroed-out sectors. To minimize
    risks, sensitive directories like /tmp /var and other directories used by encryption
    should be kept in memory and cleared at shutdown.</p>

  <h3>Wear-Leveling Security Risk</h3>

  <p>"Some storage devices (e.g., some solid-state drives, including USB flash drives)
    and some file systems utilize so-called wear-leveling mechanisms to extend the
    lifetime of the storage device or medium. These mechanisms ensure that even if
    an application repeatedly writes data to the same logical sector, the data is
    distributed evenly across the medium (logical sectors are remapped to different
    physical sectors). Therefore, multiple "versions" of a single sector may be available
    to an attacker. This may have various security implications. For instance, when
    you change a volume password/keyfile(s), the volume header is, under normal conditions,
    overwritten with a re-encrypted version of the header. However, when the volume
    resides on a device that utilizes a wear-leveling mechanism, VeraCrypt cannot
    ensure that the older header is really overwritten. If an adversary found the
    old volume header (which was to be overwritten) on the device, he could use it
    to mount the volume using an old compromised password (and/or using compromised
    keyfiles that were necessary to mount the volume before the volume header was
    re-encrypted). Due to security reasons, we recommend that VeraCrypt volumes are
    not created/stored on devices (or in file systems) that utilize a wear-leveling
    mechanism (and that VeraCrypt is not used to encrypt any portions of such devices
    or filesystems)."</p>

  <a href="https://veracrypt.eu/en/Wear-Leveling.html">Veracrypt - Wear-Leveling</a>

  <h3>How to Check TRIM Support on Linux</h3>

  <h4>1. Check if TRIM is Supported</h4>
  
  <p>Run this command to see if your SSD supports TRIM:</p>
  <pre><code>lsblk --discard</code></pre>
  <button onclick="navigator.clipboard.writeText('lsblk --discard')">Copy</button>
  <p>Look for <code>DISC-GRAN</code> and <code>DISC-MAX</code> in the output. Non-zero values mean TRIM is supported.</p>

  <h4>2. Check if TRIM is Enabled</h4>
  
  <p>Run this command to check if TRIM is enabled on your filesystem:</p>
  <pre><code>mount | grep discard</code></pre>
  <button onclick="navigator.clipboard.writeText('mount | grep discard')">Copy</button>
  <p>If you see <code>discard</code> in the output, TRIM is enabled.</p>

  <h4>3. Test TRIM Manually</h4>
  
  <p>Run this command to manually test TRIM:</p>
  <pre><code>sudo fstrim -v /</code></pre>
  <button onclick="navigator.clipboard.writeText('sudo fstrim -v /')">Copy</button>
  <p>This trims the root filesystem. Replace <code>/</code> with another mount point if needed.</p>

  <h4>4. Check Automatic TRIM Service</h4>
  
  <p>Run this command to check if automatic TRIM is enabled:</p>
  <pre><code>systemctl status fstrim.timer</code></pre>
  <button onclick="navigator.clipboard.writeText('systemctl status fstrim.timer')">Copy</button>

</body>
</html>