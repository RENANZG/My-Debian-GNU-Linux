https://gitlab.com/cryptsetup/cryptsetup/-/wikis/FrequentlyAskedQuestions

"5.18 What about Plausible Deniability?

First let me attempt a definition for the case of encrypted filesystems:
Plausible deniability is when you store data inside an encrypted
container and it is not possible to prove it is there without having a
special passphrase.  And at the same time it must be "plausible" that
there actually is no hidden data there.
As a simple entropy-analysis will show that here may be data there, the
second part is what makes it tricky.
There seem to  be a lot of misunderstandings about this idea, so let me
make it clear that this refers to the situation where the attackers can
prove that there is data that either may be random or may be part of a
plausible-deniability scheme, they just cannot prove which one it is.
Hence a plausible-deniability scheme must hold up when the attackers
know there is something potentially fishy.  If you just hide data and
rely on it not being found, that is just simple deniability, not
"plausible" deniability and I am not talking about that in the
following.  Simple deniability against a low-competence attacker may be
as simple as renaming a file or putting data into an unused part of a
disk.  Simple deniability against a high-skill attacker with time to
invest is usually pointless unless you go for advanced steganographic
techniques, which have their own drawbacks, such as low data capacity.
Now, the idea of plausible deniability is compelling and on a first
glance it seems possible to do it.  And from a cryptographic point of
view, it actually is possible.
So, does the idea work in practice?  No, unfortunately.  The reasoning
used by its proponents is fundamentally flawed in several ways and the
cryptographic properties fail fatally when colliding with the real
world.
First, why should "I do not have a hidden partition" be any more
plausible than "I forgot my crypto key" or "I wiped that partition with
random data, nothing in there"?  I do not see any reason.
Second, there are two types of situations: Either they cannot force you
to give them the key (then you simply do not) or they can.  In the
second case, they can always do bad things to you, because they cannot
prove that you have the key in the first place!  This means they do not
have to prove you have the key, or that this random looking data on your
disk is actually encrypted data.  So the situation will allow them to
waterboard/lock-up/deport you anyways, regardless of how "plausible"
your deniability is.  Do not have a hidden partition you could show to
them, but there are indications you may?  Too bad for you.
Unfortunately "plausible deniability" also means you cannot prove there
is no hidden data.
Third, hidden partitions are not that hidden.  There are basically just
two possibilities: a) Make a large crypto container, but put a smaller
filesystem in there and put the hidden partition into the free space.
Unfortunately this is glaringly obvious and can be detected in an
automated fashion.  This means that the initial suspicion to put you
under duress in order to make you reveal your hidden data is given.  b)
Make a filesystem that spans the whole encrypted partition, and put the
hidden partition into space not currently used by that filesystem.
Unfortunately that is also glaringly obvious, as you then cannot write
to the filesystem without a high risk of destroying data in the hidden
container.  Have not written anything to the encrypted filesystem in a
while?  Too bad, they have the suspicion they need to do unpleasant
things to you.
To be fair, if you prepare option b) carefully and directly before going
into danger, it may work.  But then, the mere presence of encrypted data
may already be enough to get you into trouble in those places were they
can demand encryption keys.
Here is an additional reference for some problems with plausible
deniability:
https://www.schneier.com/academic/paperfiles/paper-truecrypt-dfs.pdf
I strongly suggest you read it.
So, no, I will not provide any instructions on how to do it with plain
dm-crypt or LUKS.  If you insist on shooting yourself in the foot, you
can figure out how to do it yourself."

---

LUKS2

• LUKS header can be detached from a LUKS device and can be stored on
a separate device or in a file. With the detached header, the encrypted
device contains no visible and detectable metadata.
• Metadata area is stored in two copies to allow for a possible recovery.2 The
recovery is transparent for most of the operations (device should recover
automatically if at least one header is correct).
• Keyslot binary area is not duplicated (for security reasons), but the area
is now allocated in higher device offset where a random data corruption
should happen more rarely.