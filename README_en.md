# <ruby>EasyWan22<rt>easy wan nyan nyan</rt></ruby>

[日本語 README](README.md)

Wan 2.2 **I2V-A14B** runs normally on Win PC with RAM 32GB, Geforce RTX 30x0 or later with VRAM 8GB or more.  
RAM 16GB might be tolerable, so if you're interested, please give it a try.  
With Geforce RTX 3060 12GB, you can generate 1024px long side 101 frames or 704px long side 241 frames.

[Wan 2.2 **I2V-A14B** also works somehow with **RAM 16GB**, Geforce **GTX 1660Ti VRAM 6GB**.](https://yyy.wpx.jp/2025/08/EasyWan22_I2V-A14B_Vram6GB_Ram16GB.mp4)  
`Easy/I2V` workflow changes: 384px long side, T5 gpu->cpu fp8_e4m3fn->none, sageattn->sdpa

The workflow is designed to be larger to reduce the number of steps during mass video production.  
It's not suitable for ComfyUI learning purposes, so if that's your goal, please use [SimpleComfyUi](https://github.com/Zuntan03/SimpleComfyUi).

## User Feedback

Articles

- "[How to use EasyWan22, which makes Wan2.2 easy to use](https://note.com/aiaicreate/n/n0c24cf1a8035)" (Japanese)

Examples

- 8/4: [@studiomasakaki](https://x.com/studiomasakaki/status/1952222138762768553)
- 8/3: [@yukimino_doga](https://x.com/yukimino_doga/status/1951947103095476427) [2](https://x.com/yukimino_doga/status/1951886943588901017), [@kuromonchaya](https://x.com/kuromonchaya/status/1951983575420522602), [@aoi_yotsub16292](https://x.com/aoi_yotsub16292/status/1952052870397984795) [2](https://x.com/aoi_yotsub16292/status/1952015286774960406) [3](https://x.com/aoi_yotsub16292/status/1951990309266886843), [@remote_komusou](https://x.com/remote_komusou/status/1951792261420966189), [@ramnacolumn](https://x.com/ramnacolumn/status/1951921310218723353), [@NegiTurkey](https://x.com/NegiTurkey/status/1952135962324300120), [@nellygem888](https://x.com/nellygem888/status/1951966481043841362), [@municocco](https://x.com/municocco/status/1951858568929718562)
- 8/2: [@yukimino_doga](https://x.com/yukimino_doga/status/1951447771086725594), [@nellygem888](https://x.com/nellygem888/status/1951302176556589368) [2](https://x.com/nellygem888/status/1951313234662924646), [@iitomyii](https://x.com/iitomyii/status/1951352115835838685)
- 8/1: [@BeamManP](https://x.com/BeamManP/status/1950969267484238201), [@kagami_kami_m](https://x.com/kagami_kami_m/status/1951218120171106682), [@Kuze0x0_](https://x.com/Kuze0x0_/status/1950953805618835893), [@m_gen_chan](https://x.com/m_gen_chan/status/1951116909933633797), [@kp4114](https://x.com/kp4114/status/1951150976116859195), [@yukimino_doga](https://x.com/yukimino_doga/status/1950816818408374735) [2](https://x.com/yukimino_doga/status/1951263437939425350) [3](https://x.com/yukimino_doga/status/1950768548600770891), [@kp4114](https://x.com/kp4114/status/1951150976116859195), [@croblz25](https://x.com/croblz25/status/1950944166097326435)
- 7/31: [@Emanon_14](https://x.com/Emanon_14/status/1950892068705841599), [@yukimino_doga](https://x.com/yukimino_doga/status/1950761171797377392) [2](https://x.com/yukimino_doga/status/1950878350257312142)

## Installation Method

1. Right-click and save [EasyWan22Installer.bat](https://github.com/Zuntan03/EasyWan22/raw/main/EasyWan22/EasyWan22Installer.bat?ver=0).
	- By default, it uses [Python 3.12 recommended by ComfyUI official](https://github.com/comfyanonymous/ComfyUI#manual-install-windows-linux).  
	While unverified, you can use Python 3.10 series by installing with [EasyWan22Installer-Python3_10.bat](https://github.com/Zuntan03/EasyWan22/raw/main/EasyWan22/EasyWan22Installer-Python3_10.bat?ver=0).
		- Due to environment-dependent issues, some environments may only work with Python 3.10.  
		If installation or startup fails, please try this option as well.
2. Prepare an **empty folder** for installation at a shallow path like `C:/EasyWan22/` or `D:/EasyWan22/`, place `EasyWan22Installer.bat` there and run it.
	- **If "Publisher could not be verified. Do you want to run this software?" appears, click `Run`.**
	- **If "Windows protected your PC" appears, click `More info` then `Run anyway`.**
	- **If "Do you want to allow this app to make changes to your device?" appears during `Microsoft Visual C++ 2015-2022 Redistributable` installation, click `Yes`.**
	- **A [Civitai](https://civitai.com/) API key is required to download necessary files, so please enter it following the on-screen instructions or [know-how](https://www.google.com/search?q=civitai+api+key).**

## How to Use

- Launch with `ComfyUi.bat`.
	- **[ Warning ][ ComfyUI Trap ][ Many Victims ]  
	On first launch, old workflows in browser cache may open and cause errors.  
	Please ignore the errors and close the workflow.**
- Update with `Update.bat`.
	- Automatic file download during updates can be toggled with `EasyWan22/AutoDownload_(Enable|Disable).bat`.  
	However, disabling it may cause `Easy/*` workflows to not work properly after updates.

1. **After launching `ComfyUI.bat`, open the `Easy/00_I2V(ImageToVideo)` workflow and check the instructions at the top of the workflow from the top-left.**  
Generate videos by clicking `Queue Prompt`.

**There are examples with workflows in `Sample/`.**  
**The examples have post-processing like upscaling and frame interpolation enabled.**  
**If you want to do seed gacha based on the examples, please disable post-processing first before doing gacha.**

## Impact of Large AI Tool Models on SSD Lifespan

There are cases where concerns about the impact of large AI tool models on SSD lifespan are based on inaccurate information and are unnecessarily heightened.

While I cannot guarantee safety, if you're concerned, please make your own judgment based on the `Health Status` in [CrystalDiskInfo](https://forest.watch.impress.co.jp/library/software/crdiskinfo/) [[Japanese](https://crystalmark.info/ja/download/#CrystalDiskInfo)] [[English](https://crystalmark.info/en/download/#CrystalDiskInfo)] and other indicators.

Not limited to SSD lifespan, PCs break when they break. Please back up truly important data.

### More Detailed Explanation

Virtual memory is a mechanism that expands memory by using page files on disks like SSDs when physical memory is insufficient.  
When large AI tool models don't fit entirely in physical memory, they may write to page files to place parts of the model on disk.

While the large size of AI tools may cause concern, please judge based on the cumulative write amount in actual usage conditions.  
SSD read amounts are generally considered to have minimal impact on lifespan.

1. Record the SSD model number and `Total Host Writes` in CrystalDiskInfo.
2. Search for the SSD model number and TBW (Total Bytes Written) to check the expected total write amount for the SSD.
3. Use AI tools for about a week and compare the change in `Total Host Writes` with TBW in CrystalDiskInfo.
4. If you want to further reduce anxiety, periodically check the drive's `Health Status` in CrystalDiskInfo.

If you have multiple SSDs, you can expect more stable operation by moving the page file to an SSD with good `Health Status`.  
The page file location can be changed in Windows `Advanced System Settings - Performance Options - Advanced` under `Virtual Memory`.  
**For AI-related tools, `System managed size` is recommended over `Custom size` to avoid troubles.**  
**Setting page files on slow disks like HDDs may slow down the entire PC.**

The information in Task Manager's `Performance - Disk` tab is also affected by reads, so it's inappropriate from the perspective of worrying about SSD lifespan.  
~~When starting ComfyUI and generating for the first time, model writes to page files occur, but in subsequent generations, no page file writes occur if there are no changes to the model.~~ Block swap behavior is missing. Needs verification.  
Please judge based on actual usage over about a week rather than a few generations or SSD active time.

## Recent Updates

### 2025/08/09

- Added "[Impact of Large AI Tool Models on SSD Lifespan](#impact-of-large-ai-tool-models-on-ssd-lifespan)" information.

### 2025/08/08

- Temporarily added `00_I2V_Experimental-Wan22Lightning` workflow supporting `Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1`.
	- This is a quick Experimental release as I haven't had much time for thorough testing.
- Added support for downloading the following files:
	- `Download\loras\Fast\Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1-H.bat`
	- `Download\loras\Fast\Wan2.2-I2V-A14B-4steps-lora-rank64-Seko-V1-L.bat`
- Added explicit installation of `PyYAML`.
	- This may have resolved installation issues in Python 3.12 environments.
- Fixed a bug in `SaveLastImage` where the start frame image was being saved instead of the final frame image.

I forgot to set up GitHub repository Watch settings, so I wasn't noticing Issue registrations.  
My apologies.

### 2025/08/07

- Continuing to update `Easy/I2V` workflow.
	- As the number of green nodes has increased, frequently used nodes are now colored red.
	- Added `Trim` functionality to `PostProcess` to remove specified number of frames from the beginning or end of videos.
	- Changed `PointMosaic` to be specified on the video before `Refiner` application.
		- Eliminates the need to respecify point positions after `Refiner`.
	- Changed to toggle function enable/disable with single toggles.
	- Adjusted video save filenames for specific purposes.
	- Made `Refiner`'s Full Block swap an optional feature.
		- Resolves the issue of slightly increased VRAM consumption in LowNoise.
	- Added support for disabling start images as an experimental and temporary feature.

### 2025/08/06

- `Easy/I2V` workflow now supports `Refiner`.
	- Enlarges generated videos and refines them with LowNoise V2V that inherits from original video generation.
	- Added `Refiner` example samples to `Sample/`.
		- Generate with long side `640px` for gacha, refine to `960px`, then upscale 2x for FullHD+.
		- `Refiner` doesn't reduce VRAM consumption.  
		Its feature is enabling faster gacha loops at lower resolutions.
- Added support for downloading `Download\loras\Nsfw\GeneralNsfw22_v008a-L.bat`.
- Updated ComfyUI and WanVideoWrapper versions.

### 2025/08/04

- Continuing to update `Easy/I2V` workflow.
	- Added support for `Rewrite Prompt` that rewrites prompts with local Qwen, separate from the prompt extension in `ExtendPrompt`.
- Updates to `WanVideoWrapper` may have resolved memory shortage issues.

### 2025/08/03

- Continuing to update `Easy/I2V` workflow.
	- **Added support for Japanese prompt translation to English.**  
	**You can choose between local translation and Google Translator.**
	- Made text encoder selectable from `Kijai`, `Native`, `NAG`.  
	Default is scaled fp8 `Native`.
	- Enabled concatenation of preset prompts and input prompts for negative prompts.
	- Added support for prompt generation from images.
		- The effect of calming movement is more powerful than Wan 2.1, so usage seems limited.
	- **Added support for prompt extension by locally-running Qwen in `WanVideoPromptExtender`.**
	- Added support for selective combination of multiple types of positive prompts.
	- Changed to set video length in seconds.
	- Made frame interpolation selectable from `60FPS`, `60FPS 1.3x Speed`, `30FPS`.

### 2025/08/02

- Added `Easy/00_I2V(ImageToVideo)` workflow.
	- Supports three types of mosaic like EasyWanVideo's NsfwFast, upscaling, frame interpolation, and labels, eliminating the need for regeneration after post-processing from seed gacha hits.
- Civitai API key is now required for updates and installation.
- Added support for downloading `Download\loras\Nsfw\GeneralNsfw22_v006.bat`.
	- Updated to version `Download\loras\Nsfw\GeneralNsfw22_v008a.bat`.
- Added user feedback section.
- Added support for downloading examples to `Sample/`.
- Experimental introduction of unsupported Python 3.10 compatibility.
- Reverted to version pinning of `numpy==1.26.4` and `opencv-python==4.11.0.86` as safety measures.
- Added `EndImage` functionality to `Easy/00_I2V(ImageToVideo)` workflow, which was also available in `99_WIP_Kijai_LowSpec`.

![](https://raw.githubusercontent.com/wiki/Zuntan03/EasyWan22/log/202508/I2V.webp)

### 2025/07/31

- `99_WIP_Kijai_LowSpec` workflow now supports LoRA loading and old-type end images.
	- 20:45 Fixed a bug where end images didn't work properly.
- Added support for downloading `Download\vae_approx\taew2_1.bat`.
	- With [ComfyUI-Manager and Video Helper settings](https://github.com/kijai/ComfyUI-WanVideoWrapper/issues/229#issuecomment-2729456556), preview is displayed in `WanVideoSampler`.
- Added support for downloading `Wan2.2-I2V-A14B` in `Q4_K_M`, `Q6_K`, `Q8_0` formats.
	- You can download all at once with `Download\diffusion_models\Base-Wan2.2-I2V-A14B.bat`.
- [Prompt Dance (Old WIP Workflow)](https://yyy.wpx.jp/2025/07/20250731-EasyWan22.mp4)
	- You can generate quickly by disabling upscaling and frame interpolation.
- Operate the green nodes above `Easy/99_WIP_Kijai_LowSpec.json`.

Copy `ComfyUI/extra_model_paths.yaml.example` and rename it to `ComfyUI/extra_model_paths.yaml`, then rewrite the content to:
```yaml
comfyui:
    base_path: D:/EasyWanVideo/ComfyUI/
    loras: models/loras/
```
This allows you to reference Wan 2.1 LoRA from EasyWanVideo.  
Replace `D:/EasyWanVideo/ComfyUI/` with the absolute path to `EasyWanVideo/ComfyUI/` where EasyWanVideo is installed.

## License

The contents of this repository are under [MIT License](./LICENSE.txt).  
Folders with separate license files are under those respective licenses.