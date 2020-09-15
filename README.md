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

## Info

- Current version: v0.3.3

- Recognized tools: 125

## Installing / Uninstalling

Install:

```
cd version
sudo ./install.sh
```

Uninstall:

```
cd version
sudo ./uninstall.sh
```

Or see [Installation](https://github.com/bit101/version/wiki#installation) for more options.

## More info in the [Wiki](https://github.com/bit101/version/wiki)

- [How it Works](https://github.com/bit101/version/wiki/How-it-Works)

- [Installation](https://github.com/bit101/version/wiki/Installation)

- [Contributing](https://github.com/bit101/version/blob/master/CONTRIBUTING.md)

- [FAQ](https://github.com/bit101/version/wiki/FAQ)
