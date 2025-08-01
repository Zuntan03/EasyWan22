# <ruby>EasyWan22<rt>easy wan  nyan nyan</rt></ruby>

Wan 2.2 I2V-A14B runs normally with RAM 32GB, VRAM 8GB.  
With Geforce RTX 3060 12GB, you can generate 1024px long side, 101 frames.

[Wan 2.2 **I2V-A14B** also works somehow with **RAM 16GB**, Geforce **GTX 1660Ti VRAM 6GB**.](https://raw.githubusercontent.com/wiki/Zuntan03/EasyWan22/log/202508/EasyWan22_I2V-A14B_Vram6GB_Ram16GB.mp4)  
`Easy/I2V` workflow changes: 384px long side, T5 gpu->cpu fp8_e4m3fn->none, sageattn->spda

The workflow is designed to be larger to reduce the number of steps during mass video production.  
It's not suitable for ComfyUI learning purposes, so if that's your goal, please use [SimpleComfyUi](https://github.com/Zuntan03/SimpleComfyUi).

## User Feedback

Articles

- "[How to use EasyWan22, which makes Wan2.2 easy to use](https://note.com/aiaicreate/n/n0c24cf1a8035)" (Japanese)

Examples

- 8/2: [@nellygem888](https://x.com/nellygem888/status/1951302176556589368) [2](https://x.com/nellygem888/status/1951313234662924646)
- 8/1: [@BeamManP](https://x.com/BeamManP/status/1950969267484238201), [@kagami_kami_m](https://x.com/kagami_kami_m/status/1951218120171106682), [@Kuze0x0_](https://x.com/Kuze0x0_/status/1950953805618835893), [@m_gen_chan](https://x.com/m_gen_chan/status/1951116909933633797), [@kp4114](https://x.com/kp4114/status/1951150976116859195), [@yukimino_doga](https://x.com/yukimino_doga/status/1950816818408374735) [2](https://x.com/yukimino_doga/status/1951263437939425350) [3](https://x.com/yukimino_doga/status/1950768548600770891), [@kp4114](https://x.com/kp4114/status/1951150976116859195), [@croblz25](https://x.com/croblz25/status/1950944166097326435)
- 7/31: [@Emanon_14](https://x.com/Emanon_14/status/1950892068705841599), [@yukimino_doga](https://x.com/yukimino_doga/status/1950761171797377392) [2](https://x.com/yukimino_doga/status/1950878350257312142)

## Sample Video with Workflow

- 2025/07/31 [Prompt Dance (Old WIP Workflow)](https://yyy.wpx.jp/2025/07/20250731-EasyWan22.mp4)
	- You can generate quickly by disabling upscaling and frame interpolation.

## Installation Method

1. Right-click and save [EasyWan22Installer.bat](https://github.com/Zuntan03/EasyWan22/raw/main/EasyWan22/EasyWan22Installer.bat?ver=0).
2. Prepare an **empty folder** for installation at a shallow path like `C:/EasyWan22/` or `D:/EasyWan22/`, place `EasyWan22Installer.bat` there and run it.
	- **If "Publisher could not be verified. Do you want to run this software?" appears, click `Run`.**
	- **If "Windows protected your PC" appears, click `More info` then `Run anyway`.**
	- **If "Do you want to allow this app to make changes to your device?" appears during `Microsoft Visual C++ 2015-2022 Redistributable` installation, click `Yes`.**
	- **A [Civitai](https://civitai.com/) API key is required to download necessary files, so please enter it following the on-screen instructions or [know-how](https://www.google.com/search?q=civitai+api+key).**

## How to Use

- Launch with `ComfyUi.bat`.
	- On first launch, old workflows in browser cache may open and cause errors. Please ignore the errors and close the workflow.
- Update with `Update.bat`.

**Open the `Easy/00_I2V(ImageToVideo)` workflow and check the instructions at the top of the workflow.**

~~Operate the green nodes above `Easy/99_WIP_Kijai_LowSpec.json`.~~

Copy `ComfyUI/extra_model_paths.yaml.example` and rename it to `ComfyUI/extra_model_paths.yaml`, then rewrite the content to:
```yaml
comfyui:
    base_path: D:/EasyWanVideo/ComfyUI/
    loras: models/loras/
```
This allows you to reference Wan 2.1 LoRA from EasyWanVideo.  
Replace `D:/EasyWanVideo/ComfyUI/` with the absolute path to `EasyWanVideo/ComfyUI/` where EasyWanVideo is installed.

## Recent Updates

### 2025/08/02

- Added `Easy/00_I2V(ImageToVideo)` workflow.
	- Supports three types of mosaic like EasyWanVideo's NsfwFast, upscaling, frame interpolation, and labels, eliminating the need for regeneration after post-processing from seed gacha hits.
- Civitai API key is now required for updates and installation.
- Added support for downloading `Download\loras\Nsfw\GeneralNsfw22_v006.bat`.
- Added user feedback section.

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyWan22/log/202508/I2V.webp)

### 2025/07/31

- `99_WIP_Kijai_LowSpec` workflow now supports LoRA loading and old-type end images.
	- 20:45 Fixed a bug where end images didn't work properly.
- Added support for downloading `Download\vae_approx\taew2_1.bat`.
	- With [ComfyUI-Manager and Video Helper settings](https://github.com/kijai/ComfyUI-WanVideoWrapper/issues/229#issuecomment-2729456556), preview is displayed in `WanVideoSampler`.
- Added support for downloading `Wan2.2-I2V-A14B` in `Q4_K_M`, `Q6_K`, `Q8_0` formats.
	- You can download all at once with `Download\diffusion_models\Base-Wan2.2-I2V-A14B.bat`.

## License

The contents of this repository are under [MIT License](./LICENSE.txt).  
Folders with separate license files are under those respective licenses.