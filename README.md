# version
What version do I have of ___?

You've been there...

```
java -v // unrecognized option
java -V // unrecognized option
java --version // unrecognized option
java --Version // unrecognized option
java -Version // unrecognized option
java -version // 1.8.0_262
```

There's no standard.

```
gcc --version
node -v
node --version
python -V
perl -v
perl --version
go version
lua -v
rustc --version
```

`version` is a simple, easily updateable script that tells you what version you are on.

```
version node   // v14.70
version gcc    // 10.1.0
version java   // 1.8.0_262
version pascal // 'pascal' does not seem to be installed.
```

Download, put in your path.

Current version: v0.3.1

Recognized tools: 90

[Contribution guidelines](contributions.md)

# FAQ

Q: Couldn't you just run all the different variations on an unknown command and see which one works?
A: Yes. But running various random commands on somoene else's computer and seeing what happens is not a best practice.
