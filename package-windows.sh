#!/bin/sh
cargo update --manifest-path="windows-target/Cargo.toml"
cargo build --manifest-path="windows-target/Cargo.toml" --target-dir="windows-target" --target=x86_64-pc-windows-gnu --release
cp ./windows-target/x86_64-pc-windows-gnu/release/RenegadeX-Launcher.exe "./windows-target/Renegade X Launcher.exe"
rm windows-target/RenX-Launcher.zip
zip -j9 windows-target/RenX-Launcher "windows-target/Renegade X Launcher.exe" "windows-target/sciter.dll" "windows-target/SelfUpdateExecutor.exe"
zip -9 windows-target/RenX-Launcher -r "dom"