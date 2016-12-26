import common
import edify_generator
import os

def ModifyBegin(edify):
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ui_print("******************************************");
ui_print("* Flyme for Lenovo VIBE Shot (Z90-7)");
ui_print("*");
ui_print("* Romer: Po_Chan");
ui_print("* http://weibo.com/PoChanL");
ui_print("******************************************");\n''' + edify.script[0]


def AddPrompt(edify):
    for i in xrange(len(edify.script)):
        if "block_image_update" in edify.script[i] and "by-name/system" in edify.script[i]:
            edify.script[i] = 'ui_print("{*} Extracting System");\n' + edify.script[i]
        elif 'package_extract_file("boot' in edify.script[i]:
            edify.script[i] = 'ui_print("{*} Flashing Kernel");\n' + edify.script[i]

def AddSuperSU(info):
    SuperSU = info.input_zip.read("META/SuperSU.zip")
    common.ZipWriteStr(info.output_zip, "SuperSU/SuperSU.zip", SuperSU)
    edify = info.script
    edify.AppendExtra(('ui_print("{*} Flashing SuperSU");'))
    edify.AppendExtra(('package_extract_dir("SuperSU", "/tmp/SuperSU");'))
    edify.AppendExtra((
        'run_program("/sbin/busybox", "unzip", "/tmp/SuperSU/SuperSU.zip", "META-INF/com/google/android/*", "-d", "/tmp/SuperSU");'))
    edify.AppendExtra((
        'run_program("/sbin/busybox", "sh", "/tmp/SuperSU/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/SuperSU/SuperSU.zip");'))
    edify.AppendExtra(('ui_print("{*} Finish!");'))

def InstallBased(info):
    for filename in os.listdir("overlay/firmware-update"):
        if not (filename.find('.mbn')==-1 and filename.find('.bin')==-1):
            data=open(os.path.join(os.getcwd(),"overlay/firmware-update",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)
    extra_img_flash = """ui_print("Patching firmware images...");
package_extract_file("tz.mbn", "/dev/block/bootdevice/by-name/tz");
package_extract_file("hyp.mbn", "/dev/block/bootdevice/by-name/hyp");
package_extract_file("sbl1.mbn", "/dev/block/bootdevice/by-name/sbl1");
package_extract_file("rpm.mbn", "/dev/block/bootdevice/by-name/rpm");
package_extract_file("emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/aboot");
package_extract_file("tz.mbn", "/dev/block/bootdevice/by-name/tzbak");
package_extract_file("hyp.mbn", "/dev/block/bootdevice/by-name/hypbak");
package_extract_file("sbl1.mbn", "/dev/block/bootdevice/by-name/sbl1bak");
package_extract_file("rpm.mbn", "/dev/block/bootdevice/by-name/rpmbak");
package_extract_file("emmc_appsboot.mbn", "/dev/block/bootdevice/by-name/abootbak");
package_extract_file("NON-HLOS.bin", "/dev/block/bootdevice/by-name/modem");
package_extract_file("splash.bin", "/dev/block/bootdevice/by-name/splash");"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    edify = info.script
    ModifyBegin(edify)
    AddPrompt(edify)
    AddSuperSU(info)
    InstallBased(info)
