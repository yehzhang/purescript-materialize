-- | Before using the module, please make sure to add the following line into
-- | the `<head>` block of `index.html`:
-- |
-- | ```html
-- | <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
-- | ```
-- |
-- | See <https://materializecss.com/icons.html>.
module Materialize.Icons.Data where

import Data.Newtype (class Newtype, wrap)

import Materialize.Markup (class Render)


newtype Icons = Icons String

derive instance newtypeIcons :: Newtype Icons _

derive newtype instance renderIcons :: Render Icons

threeDRotation :: Icons
threeDRotation = wrap "3d_rotation"

acUnit :: Icons
acUnit = wrap "ac_unit"

accessAlarm :: Icons
accessAlarm = wrap "access_alarm"

accessAlarms :: Icons
accessAlarms = wrap "access_alarms"

accessTime :: Icons
accessTime = wrap "access_time"

accessibility :: Icons
accessibility = wrap "accessibility"

accessible :: Icons
accessible = wrap "accessible"

accountBalance :: Icons
accountBalance = wrap "account_balance"

accountBalanceWallet :: Icons
accountBalanceWallet = wrap "account_balance_wallet"

accountBox :: Icons
accountBox = wrap "account_box"

accountCircle :: Icons
accountCircle = wrap "account_circle"

adb :: Icons
adb = wrap "adb"

add :: Icons
add = wrap "add"

addAPhoto :: Icons
addAPhoto = wrap "add_a_photo"

addAlarm :: Icons
addAlarm = wrap "add_alarm"

addAlert :: Icons
addAlert = wrap "add_alert"

addBox :: Icons
addBox = wrap "add_box"

addCircle :: Icons
addCircle = wrap "add_circle"

addCircleOutline :: Icons
addCircleOutline = wrap "add_circle_outline"

addLocation :: Icons
addLocation = wrap "add_location"

addShoppingCart :: Icons
addShoppingCart = wrap "add_shopping_cart"

addToPhotos :: Icons
addToPhotos = wrap "add_to_photos"

addToQueue :: Icons
addToQueue = wrap "add_to_queue"

adjust :: Icons
adjust = wrap "adjust"

airlineSeatFlat :: Icons
airlineSeatFlat = wrap "airline_seat_flat"

airlineSeatFlatAngled :: Icons
airlineSeatFlatAngled = wrap "airline_seat_flat_angled"

airlineSeatIndividualSuite :: Icons
airlineSeatIndividualSuite = wrap "airline_seat_individual_suite"

airlineSeatLegroomExtra :: Icons
airlineSeatLegroomExtra = wrap "airline_seat_legroom_extra"

airlineSeatLegroomNormal :: Icons
airlineSeatLegroomNormal = wrap "airline_seat_legroom_normal"

airlineSeatLegroomReduced :: Icons
airlineSeatLegroomReduced = wrap "airline_seat_legroom_reduced"

airlineSeatReclineExtra :: Icons
airlineSeatReclineExtra = wrap "airline_seat_recline_extra"

airlineSeatReclineNormal :: Icons
airlineSeatReclineNormal = wrap "airline_seat_recline_normal"

airplanemodeActive :: Icons
airplanemodeActive = wrap "airplanemode_active"

airplanemodeInactive :: Icons
airplanemodeInactive = wrap "airplanemode_inactive"

airplay :: Icons
airplay = wrap "airplay"

airportShuttle :: Icons
airportShuttle = wrap "airport_shuttle"

alarm :: Icons
alarm = wrap "alarm"

alarmAdd :: Icons
alarmAdd = wrap "alarm_add"

alarmOff :: Icons
alarmOff = wrap "alarm_off"

alarmOn :: Icons
alarmOn = wrap "alarm_on"

album :: Icons
album = wrap "album"

allInclusive :: Icons
allInclusive = wrap "all_inclusive"

allOut :: Icons
allOut = wrap "all_out"

android :: Icons
android = wrap "android"

announcement :: Icons
announcement = wrap "announcement"

apps :: Icons
apps = wrap "apps"

archive :: Icons
archive = wrap "archive"

arrowBack :: Icons
arrowBack = wrap "arrow_back"

arrowDownward :: Icons
arrowDownward = wrap "arrow_downward"

arrowDropDown :: Icons
arrowDropDown = wrap "arrow_drop_down"

arrowDropDownCircle :: Icons
arrowDropDownCircle = wrap "arrow_drop_down_circle"

arrowDropUp :: Icons
arrowDropUp = wrap "arrow_drop_up"

arrowForward :: Icons
arrowForward = wrap "arrow_forward"

arrowUpward :: Icons
arrowUpward = wrap "arrow_upward"

artTrack :: Icons
artTrack = wrap "art_track"

aspectRatio :: Icons
aspectRatio = wrap "aspect_ratio"

assessment :: Icons
assessment = wrap "assessment"

assignment :: Icons
assignment = wrap "assignment"

assignmentInd :: Icons
assignmentInd = wrap "assignment_ind"

assignmentLate :: Icons
assignmentLate = wrap "assignment_late"

assignmentReturn :: Icons
assignmentReturn = wrap "assignment_return"

assignmentReturned :: Icons
assignmentReturned = wrap "assignment_returned"

assignmentTurnedIn :: Icons
assignmentTurnedIn = wrap "assignment_turned_in"

assistant :: Icons
assistant = wrap "assistant"

assistantPhoto :: Icons
assistantPhoto = wrap "assistant_photo"

attachFile :: Icons
attachFile = wrap "attach_file"

attachMoney :: Icons
attachMoney = wrap "attach_money"

attachment :: Icons
attachment = wrap "attachment"

audiotrack :: Icons
audiotrack = wrap "audiotrack"

autorenew :: Icons
autorenew = wrap "autorenew"

avTimer :: Icons
avTimer = wrap "av_timer"

backspace :: Icons
backspace = wrap "backspace"

backup :: Icons
backup = wrap "backup"

batteryAlert :: Icons
batteryAlert = wrap "battery_alert"

batteryChargingFull :: Icons
batteryChargingFull = wrap "battery_charging_full"

batteryFull :: Icons
batteryFull = wrap "battery_full"

batteryStd :: Icons
batteryStd = wrap "battery_std"

batteryUnknown :: Icons
batteryUnknown = wrap "battery_unknown"

beachAccess :: Icons
beachAccess = wrap "beach_access"

beenhere :: Icons
beenhere = wrap "beenhere"

block :: Icons
block = wrap "block"

bluetooth :: Icons
bluetooth = wrap "bluetooth"

bluetoothAudio :: Icons
bluetoothAudio = wrap "bluetooth_audio"

bluetoothConnected :: Icons
bluetoothConnected = wrap "bluetooth_connected"

bluetoothDisabled :: Icons
bluetoothDisabled = wrap "bluetooth_disabled"

bluetoothSearching :: Icons
bluetoothSearching = wrap "bluetooth_searching"

blurCircular :: Icons
blurCircular = wrap "blur_circular"

blurLinear :: Icons
blurLinear = wrap "blur_linear"

blurOff :: Icons
blurOff = wrap "blur_off"

blurOn :: Icons
blurOn = wrap "blur_on"

book :: Icons
book = wrap "book"

bookmark :: Icons
bookmark = wrap "bookmark"

bookmarkBorder :: Icons
bookmarkBorder = wrap "bookmark_border"

borderAll :: Icons
borderAll = wrap "border_all"

borderBottom :: Icons
borderBottom = wrap "border_bottom"

borderClear :: Icons
borderClear = wrap "border_clear"

borderColor :: Icons
borderColor = wrap "border_color"

borderHorizontal :: Icons
borderHorizontal = wrap "border_horizontal"

borderInner :: Icons
borderInner = wrap "border_inner"

borderLeft :: Icons
borderLeft = wrap "border_left"

borderOuter :: Icons
borderOuter = wrap "border_outer"

borderRight :: Icons
borderRight = wrap "border_right"

borderStyle :: Icons
borderStyle = wrap "border_style"

borderTop :: Icons
borderTop = wrap "border_top"

borderVertical :: Icons
borderVertical = wrap "border_vertical"

brandingWatermark :: Icons
brandingWatermark = wrap "branding_watermark"

brightness1 :: Icons
brightness1 = wrap "brightness_1"

brightness2 :: Icons
brightness2 = wrap "brightness_2"

brightness3 :: Icons
brightness3 = wrap "brightness_3"

brightness4 :: Icons
brightness4 = wrap "brightness_4"

brightness5 :: Icons
brightness5 = wrap "brightness_5"

brightness6 :: Icons
brightness6 = wrap "brightness_6"

brightness7 :: Icons
brightness7 = wrap "brightness_7"

brightnessAuto :: Icons
brightnessAuto = wrap "brightness_auto"

brightnessHigh :: Icons
brightnessHigh = wrap "brightness_high"

brightnessLow :: Icons
brightnessLow = wrap "brightness_low"

brightnessMedium :: Icons
brightnessMedium = wrap "brightness_medium"

brokenImage :: Icons
brokenImage = wrap "broken_image"

brush :: Icons
brush = wrap "brush"

bubbleChart :: Icons
bubbleChart = wrap "bubble_chart"

bugReport :: Icons
bugReport = wrap "bug_report"

build :: Icons
build = wrap "build"

burstMode :: Icons
burstMode = wrap "burst_mode"

business :: Icons
business = wrap "business"

businessCenter :: Icons
businessCenter = wrap "business_center"

cached :: Icons
cached = wrap "cached"

cake :: Icons
cake = wrap "cake"

call :: Icons
call = wrap "call"

callEnd :: Icons
callEnd = wrap "call_end"

callMade :: Icons
callMade = wrap "call_made"

callMerge :: Icons
callMerge = wrap "call_merge"

callMissed :: Icons
callMissed = wrap "call_missed"

callMissedOutgoing :: Icons
callMissedOutgoing = wrap "call_missed_outgoing"

callReceived :: Icons
callReceived = wrap "call_received"

callSplit :: Icons
callSplit = wrap "call_split"

callToAction :: Icons
callToAction = wrap "call_to_action"

camera :: Icons
camera = wrap "camera"

cameraAlt :: Icons
cameraAlt = wrap "camera_alt"

cameraEnhance :: Icons
cameraEnhance = wrap "camera_enhance"

cameraFront :: Icons
cameraFront = wrap "camera_front"

cameraRear :: Icons
cameraRear = wrap "camera_rear"

cameraRoll :: Icons
cameraRoll = wrap "camera_roll"

cancel :: Icons
cancel = wrap "cancel"

cardGiftcard :: Icons
cardGiftcard = wrap "card_giftcard"

cardMembership :: Icons
cardMembership = wrap "card_membership"

cardTravel :: Icons
cardTravel = wrap "card_travel"

casino :: Icons
casino = wrap "casino"

cast :: Icons
cast = wrap "cast"

castConnected :: Icons
castConnected = wrap "cast_connected"

centerFocusStrong :: Icons
centerFocusStrong = wrap "center_focus_strong"

centerFocusWeak :: Icons
centerFocusWeak = wrap "center_focus_weak"

changeHistory :: Icons
changeHistory = wrap "change_history"

chat :: Icons
chat = wrap "chat"

chatBubble :: Icons
chatBubble = wrap "chat_bubble"

chatBubbleOutline :: Icons
chatBubbleOutline = wrap "chat_bubble_outline"

check :: Icons
check = wrap "check"

checkBox :: Icons
checkBox = wrap "check_box"

checkBoxOutlineBlank :: Icons
checkBoxOutlineBlank = wrap "check_box_outline_blank"

checkCircle :: Icons
checkCircle = wrap "check_circle"

chevronLeft :: Icons
chevronLeft = wrap "chevron_left"

chevronRight :: Icons
chevronRight = wrap "chevron_right"

childCare :: Icons
childCare = wrap "child_care"

childFriendly :: Icons
childFriendly = wrap "child_friendly"

chromeReaderMode :: Icons
chromeReaderMode = wrap "chrome_reader_mode"

class' :: Icons
class' = wrap "class"

clear :: Icons
clear = wrap "clear"

clearAll :: Icons
clearAll = wrap "clear_all"

close :: Icons
close = wrap "close"

closedCaption :: Icons
closedCaption = wrap "closed_caption"

cloud :: Icons
cloud = wrap "cloud"

cloudCircle :: Icons
cloudCircle = wrap "cloud_circle"

cloudDone :: Icons
cloudDone = wrap "cloud_done"

cloudDownload :: Icons
cloudDownload = wrap "cloud_download"

cloudOff :: Icons
cloudOff = wrap "cloud_off"

cloudQueue :: Icons
cloudQueue = wrap "cloud_queue"

cloudUpload :: Icons
cloudUpload = wrap "cloud_upload"

code :: Icons
code = wrap "code"

collections :: Icons
collections = wrap "collections"

collectionsBookmark :: Icons
collectionsBookmark = wrap "collections_bookmark"

colorLens :: Icons
colorLens = wrap "color_lens"

colorize :: Icons
colorize = wrap "colorize"

comment :: Icons
comment = wrap "comment"

compare :: Icons
compare = wrap "compare"

compareArrows :: Icons
compareArrows = wrap "compare_arrows"

computer :: Icons
computer = wrap "computer"

confirmationNumber :: Icons
confirmationNumber = wrap "confirmation_number"

contactMail :: Icons
contactMail = wrap "contact_mail"

contactPhone :: Icons
contactPhone = wrap "contact_phone"

contacts :: Icons
contacts = wrap "contacts"

contentCopy :: Icons
contentCopy = wrap "content_copy"

contentCut :: Icons
contentCut = wrap "content_cut"

contentPaste :: Icons
contentPaste = wrap "content_paste"

controlPoint :: Icons
controlPoint = wrap "control_point"

controlPointDuplicate :: Icons
controlPointDuplicate = wrap "control_point_duplicate"

copyright :: Icons
copyright = wrap "copyright"

create :: Icons
create = wrap "create"

createNewFolder :: Icons
createNewFolder = wrap "create_new_folder"

creditCard :: Icons
creditCard = wrap "credit_card"

crop :: Icons
crop = wrap "crop"

crop169 :: Icons
crop169 = wrap "crop_16_9"

crop32 :: Icons
crop32 = wrap "crop_3_2"

crop54 :: Icons
crop54 = wrap "crop_5_4"

crop75 :: Icons
crop75 = wrap "crop_7_5"

cropDin :: Icons
cropDin = wrap "crop_din"

cropFree :: Icons
cropFree = wrap "crop_free"

cropLandscape :: Icons
cropLandscape = wrap "crop_landscape"

cropOriginal :: Icons
cropOriginal = wrap "crop_original"

cropPortrait :: Icons
cropPortrait = wrap "crop_portrait"

cropRotate :: Icons
cropRotate = wrap "crop_rotate"

cropSquare :: Icons
cropSquare = wrap "crop_square"

dashboard :: Icons
dashboard = wrap "dashboard"

dataUsage :: Icons
dataUsage = wrap "data_usage"

dateRange :: Icons
dateRange = wrap "date_range"

dehaze :: Icons
dehaze = wrap "dehaze"

delete :: Icons
delete = wrap "delete"

deleteForever :: Icons
deleteForever = wrap "delete_forever"

deleteSweep :: Icons
deleteSweep = wrap "delete_sweep"

description :: Icons
description = wrap "description"

desktopMac :: Icons
desktopMac = wrap "desktop_mac"

desktopWindows :: Icons
desktopWindows = wrap "desktop_windows"

details :: Icons
details = wrap "details"

developerBoard :: Icons
developerBoard = wrap "developer_board"

developerMode :: Icons
developerMode = wrap "developer_mode"

deviceHub :: Icons
deviceHub = wrap "device_hub"

devices :: Icons
devices = wrap "devices"

devicesOther :: Icons
devicesOther = wrap "devices_other"

dialerSip :: Icons
dialerSip = wrap "dialer_sip"

dialpad :: Icons
dialpad = wrap "dialpad"

directions :: Icons
directions = wrap "directions"

directionsBike :: Icons
directionsBike = wrap "directions_bike"

directionsBoat :: Icons
directionsBoat = wrap "directions_boat"

directionsBus :: Icons
directionsBus = wrap "directions_bus"

directionsCar :: Icons
directionsCar = wrap "directions_car"

directionsRailway :: Icons
directionsRailway = wrap "directions_railway"

directionsRun :: Icons
directionsRun = wrap "directions_run"

directionsSubway :: Icons
directionsSubway = wrap "directions_subway"

directionsTransit :: Icons
directionsTransit = wrap "directions_transit"

directionsWalk :: Icons
directionsWalk = wrap "directions_walk"

discFull :: Icons
discFull = wrap "disc_full"

dns :: Icons
dns = wrap "dns"

doNotDisturb :: Icons
doNotDisturb = wrap "do_not_disturb"

doNotDisturbAlt :: Icons
doNotDisturbAlt = wrap "do_not_disturb_alt"

doNotDisturbOff :: Icons
doNotDisturbOff = wrap "do_not_disturb_off"

doNotDisturbOn :: Icons
doNotDisturbOn = wrap "do_not_disturb_on"

dock :: Icons
dock = wrap "dock"

domain :: Icons
domain = wrap "domain"

done :: Icons
done = wrap "done"

doneAll :: Icons
doneAll = wrap "done_all"

donutLarge :: Icons
donutLarge = wrap "donut_large"

donutSmall :: Icons
donutSmall = wrap "donut_small"

drafts :: Icons
drafts = wrap "drafts"

dragHandle :: Icons
dragHandle = wrap "drag_handle"

driveEta :: Icons
driveEta = wrap "drive_eta"

dvr :: Icons
dvr = wrap "dvr"

edit :: Icons
edit = wrap "edit"

editLocation :: Icons
editLocation = wrap "edit_location"

eject :: Icons
eject = wrap "eject"

email :: Icons
email = wrap "email"

enhancedEncryption :: Icons
enhancedEncryption = wrap "enhanced_encryption"

equalizer :: Icons
equalizer = wrap "equalizer"

error :: Icons
error = wrap "error"

errorOutline :: Icons
errorOutline = wrap "error_outline"

euroSymbol :: Icons
euroSymbol = wrap "euro_symbol"

evStation :: Icons
evStation = wrap "ev_station"

event :: Icons
event = wrap "event"

eventAvailable :: Icons
eventAvailable = wrap "event_available"

eventBusy :: Icons
eventBusy = wrap "event_busy"

eventNote :: Icons
eventNote = wrap "event_note"

eventSeat :: Icons
eventSeat = wrap "event_seat"

exitToApp :: Icons
exitToApp = wrap "exit_to_app"

expandLess :: Icons
expandLess = wrap "expand_less"

expandMore :: Icons
expandMore = wrap "expand_more"

explicit :: Icons
explicit = wrap "explicit"

explore :: Icons
explore = wrap "explore"

exposure :: Icons
exposure = wrap "exposure"

exposureNeg1 :: Icons
exposureNeg1 = wrap "exposure_neg_1"

exposureNeg2 :: Icons
exposureNeg2 = wrap "exposure_neg_2"

exposurePlus1 :: Icons
exposurePlus1 = wrap "exposure_plus_1"

exposurePlus2 :: Icons
exposurePlus2 = wrap "exposure_plus_2"

exposureZero :: Icons
exposureZero = wrap "exposure_zero"

extension :: Icons
extension = wrap "extension"

face :: Icons
face = wrap "face"

fastForward :: Icons
fastForward = wrap "fast_forward"

fastRewind :: Icons
fastRewind = wrap "fast_rewind"

favorite :: Icons
favorite = wrap "favorite"

favoriteBorder :: Icons
favoriteBorder = wrap "favorite_border"

featuredPlayList :: Icons
featuredPlayList = wrap "featured_play_list"

featuredVideo :: Icons
featuredVideo = wrap "featured_video"

feedback :: Icons
feedback = wrap "feedback"

fiberDvr :: Icons
fiberDvr = wrap "fiber_dvr"

fiberManualRecord :: Icons
fiberManualRecord = wrap "fiber_manual_record"

fiberNew :: Icons
fiberNew = wrap "fiber_new"

fiberPin :: Icons
fiberPin = wrap "fiber_pin"

fiberSmartRecord :: Icons
fiberSmartRecord = wrap "fiber_smart_record"

fileDownload :: Icons
fileDownload = wrap "file_download"

fileUpload :: Icons
fileUpload = wrap "file_upload"

filter :: Icons
filter = wrap "filter"

filter1 :: Icons
filter1 = wrap "filter_1"

filter2 :: Icons
filter2 = wrap "filter_2"

filter3 :: Icons
filter3 = wrap "filter_3"

filter4 :: Icons
filter4 = wrap "filter_4"

filter5 :: Icons
filter5 = wrap "filter_5"

filter6 :: Icons
filter6 = wrap "filter_6"

filter7 :: Icons
filter7 = wrap "filter_7"

filter8 :: Icons
filter8 = wrap "filter_8"

filter9 :: Icons
filter9 = wrap "filter_9"

filter9Plus :: Icons
filter9Plus = wrap "filter_9_plus"

filterBAndW :: Icons
filterBAndW = wrap "filter_b_and_w"

filterCenterFocus :: Icons
filterCenterFocus = wrap "filter_center_focus"

filterDrama :: Icons
filterDrama = wrap "filter_drama"

filterFrames :: Icons
filterFrames = wrap "filter_frames"

filterHdr :: Icons
filterHdr = wrap "filter_hdr"

filterList :: Icons
filterList = wrap "filter_list"

filterNone :: Icons
filterNone = wrap "filter_none"

filterTiltShift :: Icons
filterTiltShift = wrap "filter_tilt_shift"

filterVintage :: Icons
filterVintage = wrap "filter_vintage"

findInPage :: Icons
findInPage = wrap "find_in_page"

findReplace :: Icons
findReplace = wrap "find_replace"

fingerprint :: Icons
fingerprint = wrap "fingerprint"

firstPage :: Icons
firstPage = wrap "first_page"

fitnessCenter :: Icons
fitnessCenter = wrap "fitness_center"

flag :: Icons
flag = wrap "flag"

flare :: Icons
flare = wrap "flare"

flashAuto :: Icons
flashAuto = wrap "flash_auto"

flashOff :: Icons
flashOff = wrap "flash_off"

flashOn :: Icons
flashOn = wrap "flash_on"

flight :: Icons
flight = wrap "flight"

flightLand :: Icons
flightLand = wrap "flight_land"

flightTakeoff :: Icons
flightTakeoff = wrap "flight_takeoff"

flip :: Icons
flip = wrap "flip"

flipToBack :: Icons
flipToBack = wrap "flip_to_back"

flipToFront :: Icons
flipToFront = wrap "flip_to_front"

folder :: Icons
folder = wrap "folder"

folderOpen :: Icons
folderOpen = wrap "folder_open"

folderShared :: Icons
folderShared = wrap "folder_shared"

folderSpecial :: Icons
folderSpecial = wrap "folder_special"

fontDownload :: Icons
fontDownload = wrap "font_download"

formatAlignCenter :: Icons
formatAlignCenter = wrap "format_align_center"

formatAlignJustify :: Icons
formatAlignJustify = wrap "format_align_justify"

formatAlignLeft :: Icons
formatAlignLeft = wrap "format_align_left"

formatAlignRight :: Icons
formatAlignRight = wrap "format_align_right"

formatBold :: Icons
formatBold = wrap "format_bold"

formatClear :: Icons
formatClear = wrap "format_clear"

formatColorFill :: Icons
formatColorFill = wrap "format_color_fill"

formatColorReset :: Icons
formatColorReset = wrap "format_color_reset"

formatColorText :: Icons
formatColorText = wrap "format_color_text"

formatIndentDecrease :: Icons
formatIndentDecrease = wrap "format_indent_decrease"

formatIndentIncrease :: Icons
formatIndentIncrease = wrap "format_indent_increase"

formatItalic :: Icons
formatItalic = wrap "format_italic"

formatLineSpacing :: Icons
formatLineSpacing = wrap "format_line_spacing"

formatListBulleted :: Icons
formatListBulleted = wrap "format_list_bulleted"

formatListNumbered :: Icons
formatListNumbered = wrap "format_list_numbered"

formatPaint :: Icons
formatPaint = wrap "format_paint"

formatQuote :: Icons
formatQuote = wrap "format_quote"

formatShapes :: Icons
formatShapes = wrap "format_shapes"

formatSize :: Icons
formatSize = wrap "format_size"

formatStrikethrough :: Icons
formatStrikethrough = wrap "format_strikethrough"

formatTextdirectionLToR :: Icons
formatTextdirectionLToR = wrap "format_textdirection_l_to_r"

formatTextdirectionRToL :: Icons
formatTextdirectionRToL = wrap "format_textdirection_r_to_l"

formatUnderlined :: Icons
formatUnderlined = wrap "format_underlined"

forum :: Icons
forum = wrap "forum"

forward :: Icons
forward = wrap "forward"

forward10 :: Icons
forward10 = wrap "forward_10"

forward30 :: Icons
forward30 = wrap "forward_30"

forward5 :: Icons
forward5 = wrap "forward_5"

freeBreakfast :: Icons
freeBreakfast = wrap "free_breakfast"

fullscreen :: Icons
fullscreen = wrap "fullscreen"

fullscreenExit :: Icons
fullscreenExit = wrap "fullscreen_exit"

functions :: Icons
functions = wrap "functions"

gTranslate :: Icons
gTranslate = wrap "g_translate"

gamepad :: Icons
gamepad = wrap "gamepad"

games :: Icons
games = wrap "games"

gavel :: Icons
gavel = wrap "gavel"

gesture :: Icons
gesture = wrap "gesture"

getApp :: Icons
getApp = wrap "get_app"

gif :: Icons
gif = wrap "gif"

golfCourse :: Icons
golfCourse = wrap "golf_course"

gpsFixed :: Icons
gpsFixed = wrap "gps_fixed"

gpsNotFixed :: Icons
gpsNotFixed = wrap "gps_not_fixed"

gpsOff :: Icons
gpsOff = wrap "gps_off"

grade :: Icons
grade = wrap "grade"

gradient :: Icons
gradient = wrap "gradient"

grain :: Icons
grain = wrap "grain"

graphicEq :: Icons
graphicEq = wrap "graphic_eq"

gridOff :: Icons
gridOff = wrap "grid_off"

gridOn :: Icons
gridOn = wrap "grid_on"

group :: Icons
group = wrap "group"

groupAdd :: Icons
groupAdd = wrap "group_add"

groupWork :: Icons
groupWork = wrap "group_work"

hd :: Icons
hd = wrap "hd"

hdrOff :: Icons
hdrOff = wrap "hdr_off"

hdrOn :: Icons
hdrOn = wrap "hdr_on"

hdrStrong :: Icons
hdrStrong = wrap "hdr_strong"

hdrWeak :: Icons
hdrWeak = wrap "hdr_weak"

headset :: Icons
headset = wrap "headset"

headsetMic :: Icons
headsetMic = wrap "headset_mic"

healing :: Icons
healing = wrap "healing"

hearing :: Icons
hearing = wrap "hearing"

help :: Icons
help = wrap "help"

helpOutline :: Icons
helpOutline = wrap "help_outline"

highQuality :: Icons
highQuality = wrap "high_quality"

highlight :: Icons
highlight = wrap "highlight"

highlightOff :: Icons
highlightOff = wrap "highlight_off"

history :: Icons
history = wrap "history"

home :: Icons
home = wrap "home"

hotTub :: Icons
hotTub = wrap "hot_tub"

hotel :: Icons
hotel = wrap "hotel"

hourglassEmpty :: Icons
hourglassEmpty = wrap "hourglass_empty"

hourglassFull :: Icons
hourglassFull = wrap "hourglass_full"

http :: Icons
http = wrap "http"

https :: Icons
https = wrap "https"

image :: Icons
image = wrap "image"

imageAspectRatio :: Icons
imageAspectRatio = wrap "image_aspect_ratio"

importContacts :: Icons
importContacts = wrap "import_contacts"

importExport :: Icons
importExport = wrap "import_export"

importantDevices :: Icons
importantDevices = wrap "important_devices"

inbox :: Icons
inbox = wrap "inbox"

indeterminateCheckBox :: Icons
indeterminateCheckBox = wrap "indeterminate_check_box"

info :: Icons
info = wrap "info"

infoOutline :: Icons
infoOutline = wrap "info_outline"

input :: Icons
input = wrap "input"

insertChart :: Icons
insertChart = wrap "insert_chart"

insertComment :: Icons
insertComment = wrap "insert_comment"

insertDriveFile :: Icons
insertDriveFile = wrap "insert_drive_file"

insertEmoticon :: Icons
insertEmoticon = wrap "insert_emoticon"

insertInvitation :: Icons
insertInvitation = wrap "insert_invitation"

insertLink :: Icons
insertLink = wrap "insert_link"

insertPhoto :: Icons
insertPhoto = wrap "insert_photo"

invertColors :: Icons
invertColors = wrap "invert_colors"

invertColorsOff :: Icons
invertColorsOff = wrap "invert_colors_off"

iso :: Icons
iso = wrap "iso"

keyboard :: Icons
keyboard = wrap "keyboard"

keyboardArrowDown :: Icons
keyboardArrowDown = wrap "keyboard_arrow_down"

keyboardArrowLeft :: Icons
keyboardArrowLeft = wrap "keyboard_arrow_left"

keyboardArrowRight :: Icons
keyboardArrowRight = wrap "keyboard_arrow_right"

keyboardArrowUp :: Icons
keyboardArrowUp = wrap "keyboard_arrow_up"

keyboardBackspace :: Icons
keyboardBackspace = wrap "keyboard_backspace"

keyboardCapslock :: Icons
keyboardCapslock = wrap "keyboard_capslock"

keyboardHide :: Icons
keyboardHide = wrap "keyboard_hide"

keyboardReturn :: Icons
keyboardReturn = wrap "keyboard_return"

keyboardTab :: Icons
keyboardTab = wrap "keyboard_tab"

keyboardVoice :: Icons
keyboardVoice = wrap "keyboard_voice"

kitchen :: Icons
kitchen = wrap "kitchen"

label :: Icons
label = wrap "label"

labelOutline :: Icons
labelOutline = wrap "label_outline"

landscape :: Icons
landscape = wrap "landscape"

language :: Icons
language = wrap "language"

laptop :: Icons
laptop = wrap "laptop"

laptopChromebook :: Icons
laptopChromebook = wrap "laptop_chromebook"

laptopMac :: Icons
laptopMac = wrap "laptop_mac"

laptopWindows :: Icons
laptopWindows = wrap "laptop_windows"

lastPage :: Icons
lastPage = wrap "last_page"

launch :: Icons
launch = wrap "launch"

layers :: Icons
layers = wrap "layers"

layersClear :: Icons
layersClear = wrap "layers_clear"

leakAdd :: Icons
leakAdd = wrap "leak_add"

leakRemove :: Icons
leakRemove = wrap "leak_remove"

lens :: Icons
lens = wrap "lens"

libraryAdd :: Icons
libraryAdd = wrap "library_add"

libraryBooks :: Icons
libraryBooks = wrap "library_books"

libraryMusic :: Icons
libraryMusic = wrap "library_music"

lightbulbOutline :: Icons
lightbulbOutline = wrap "lightbulb_outline"

lineStyle :: Icons
lineStyle = wrap "line_style"

lineWeight :: Icons
lineWeight = wrap "line_weight"

linearScale :: Icons
linearScale = wrap "linear_scale"

link :: Icons
link = wrap "link"

linkedCamera :: Icons
linkedCamera = wrap "linked_camera"

list :: Icons
list = wrap "list"

liveHelp :: Icons
liveHelp = wrap "live_help"

liveTv :: Icons
liveTv = wrap "live_tv"

localActivity :: Icons
localActivity = wrap "local_activity"

localAirport :: Icons
localAirport = wrap "local_airport"

localAtm :: Icons
localAtm = wrap "local_atm"

localBar :: Icons
localBar = wrap "local_bar"

localCafe :: Icons
localCafe = wrap "local_cafe"

localCarWash :: Icons
localCarWash = wrap "local_car_wash"

localConvenienceStore :: Icons
localConvenienceStore = wrap "local_convenience_store"

localDining :: Icons
localDining = wrap "local_dining"

localDrink :: Icons
localDrink = wrap "local_drink"

localFlorist :: Icons
localFlorist = wrap "local_florist"

localGasStation :: Icons
localGasStation = wrap "local_gas_station"

localGroceryStore :: Icons
localGroceryStore = wrap "local_grocery_store"

localHospital :: Icons
localHospital = wrap "local_hospital"

localHotel :: Icons
localHotel = wrap "local_hotel"

localLaundryService :: Icons
localLaundryService = wrap "local_laundry_service"

localLibrary :: Icons
localLibrary = wrap "local_library"

localMall :: Icons
localMall = wrap "local_mall"

localMovies :: Icons
localMovies = wrap "local_movies"

localOffer :: Icons
localOffer = wrap "local_offer"

localParking :: Icons
localParking = wrap "local_parking"

localPharmacy :: Icons
localPharmacy = wrap "local_pharmacy"

localPhone :: Icons
localPhone = wrap "local_phone"

localPizza :: Icons
localPizza = wrap "local_pizza"

localPlay :: Icons
localPlay = wrap "local_play"

localPostOffice :: Icons
localPostOffice = wrap "local_post_office"

localPrintshop :: Icons
localPrintshop = wrap "local_printshop"

localSee :: Icons
localSee = wrap "local_see"

localShipping :: Icons
localShipping = wrap "local_shipping"

localTaxi :: Icons
localTaxi = wrap "local_taxi"

locationCity :: Icons
locationCity = wrap "location_city"

locationDisabled :: Icons
locationDisabled = wrap "location_disabled"

locationOff :: Icons
locationOff = wrap "location_off"

locationOn :: Icons
locationOn = wrap "location_on"

locationSearching :: Icons
locationSearching = wrap "location_searching"

lock :: Icons
lock = wrap "lock"

lockOpen :: Icons
lockOpen = wrap "lock_open"

lockOutline :: Icons
lockOutline = wrap "lock_outline"

looks :: Icons
looks = wrap "looks"

looks3 :: Icons
looks3 = wrap "looks_3"

looks4 :: Icons
looks4 = wrap "looks_4"

looks5 :: Icons
looks5 = wrap "looks_5"

looks6 :: Icons
looks6 = wrap "looks_6"

looksOne :: Icons
looksOne = wrap "looks_one"

looksTwo :: Icons
looksTwo = wrap "looks_two"

loop :: Icons
loop = wrap "loop"

loupe :: Icons
loupe = wrap "loupe"

lowPriority :: Icons
lowPriority = wrap "low_priority"

loyalty :: Icons
loyalty = wrap "loyalty"

mail :: Icons
mail = wrap "mail"

mailOutline :: Icons
mailOutline = wrap "mail_outline"

map :: Icons
map = wrap "map"

markunread :: Icons
markunread = wrap "markunread"

markunreadMailbox :: Icons
markunreadMailbox = wrap "markunread_mailbox"

memory :: Icons
memory = wrap "memory"

menu :: Icons
menu = wrap "menu"

mergeType :: Icons
mergeType = wrap "merge_type"

message :: Icons
message = wrap "message"

mic :: Icons
mic = wrap "mic"

micNone :: Icons
micNone = wrap "mic_none"

micOff :: Icons
micOff = wrap "mic_off"

mms :: Icons
mms = wrap "mms"

modeComment :: Icons
modeComment = wrap "mode_comment"

modeEdit :: Icons
modeEdit = wrap "mode_edit"

monetizationOn :: Icons
monetizationOn = wrap "monetization_on"

moneyOff :: Icons
moneyOff = wrap "money_off"

monochromePhotos :: Icons
monochromePhotos = wrap "monochrome_photos"

mood :: Icons
mood = wrap "mood"

moodBad :: Icons
moodBad = wrap "mood_bad"

more :: Icons
more = wrap "more"

moreHoriz :: Icons
moreHoriz = wrap "more_horiz"

moreVert :: Icons
moreVert = wrap "more_vert"

motorcycle :: Icons
motorcycle = wrap "motorcycle"

mouse :: Icons
mouse = wrap "mouse"

moveToInbox :: Icons
moveToInbox = wrap "move_to_inbox"

movie :: Icons
movie = wrap "movie"

movieCreation :: Icons
movieCreation = wrap "movie_creation"

movieFilter :: Icons
movieFilter = wrap "movie_filter"

multilineChart :: Icons
multilineChart = wrap "multiline_chart"

musicNote :: Icons
musicNote = wrap "music_note"

musicVideo :: Icons
musicVideo = wrap "music_video"

myLocation :: Icons
myLocation = wrap "my_location"

nature :: Icons
nature = wrap "nature"

naturePeople :: Icons
naturePeople = wrap "nature_people"

navigateBefore :: Icons
navigateBefore = wrap "navigate_before"

navigateNext :: Icons
navigateNext = wrap "navigate_next"

navigation :: Icons
navigation = wrap "navigation"

nearMe :: Icons
nearMe = wrap "near_me"

networkCell :: Icons
networkCell = wrap "network_cell"

networkCheck :: Icons
networkCheck = wrap "network_check"

networkLocked :: Icons
networkLocked = wrap "network_locked"

networkWifi :: Icons
networkWifi = wrap "network_wifi"

newReleases :: Icons
newReleases = wrap "new_releases"

nextWeek :: Icons
nextWeek = wrap "next_week"

nfc :: Icons
nfc = wrap "nfc"

noEncryption :: Icons
noEncryption = wrap "no_encryption"

noSim :: Icons
noSim = wrap "no_sim"

notInterested :: Icons
notInterested = wrap "not_interested"

note :: Icons
note = wrap "note"

noteAdd :: Icons
noteAdd = wrap "note_add"

notifications :: Icons
notifications = wrap "notifications"

notificationsActive :: Icons
notificationsActive = wrap "notifications_active"

notificationsNone :: Icons
notificationsNone = wrap "notifications_none"

notificationsOff :: Icons
notificationsOff = wrap "notifications_off"

notificationsPaused :: Icons
notificationsPaused = wrap "notifications_paused"

offlinePin :: Icons
offlinePin = wrap "offline_pin"

ondemandVideo :: Icons
ondemandVideo = wrap "ondemand_video"

opacity :: Icons
opacity = wrap "opacity"

openInBrowser :: Icons
openInBrowser = wrap "open_in_browser"

openInNew :: Icons
openInNew = wrap "open_in_new"

openWith :: Icons
openWith = wrap "open_with"

pages :: Icons
pages = wrap "pages"

pageview :: Icons
pageview = wrap "pageview"

palette :: Icons
palette = wrap "palette"

panTool :: Icons
panTool = wrap "pan_tool"

panorama :: Icons
panorama = wrap "panorama"

panoramaFishEye :: Icons
panoramaFishEye = wrap "panorama_fish_eye"

panoramaHorizontal :: Icons
panoramaHorizontal = wrap "panorama_horizontal"

panoramaVertical :: Icons
panoramaVertical = wrap "panorama_vertical"

panoramaWideAngle :: Icons
panoramaWideAngle = wrap "panorama_wide_angle"

partyMode :: Icons
partyMode = wrap "party_mode"

pause :: Icons
pause = wrap "pause"

pauseCircleFilled :: Icons
pauseCircleFilled = wrap "pause_circle_filled"

pauseCircleOutline :: Icons
pauseCircleOutline = wrap "pause_circle_outline"

payment :: Icons
payment = wrap "payment"

people :: Icons
people = wrap "people"

peopleOutline :: Icons
peopleOutline = wrap "people_outline"

permCameraMic :: Icons
permCameraMic = wrap "perm_camera_mic"

permContactCalendar :: Icons
permContactCalendar = wrap "perm_contact_calendar"

permDataSetting :: Icons
permDataSetting = wrap "perm_data_setting"

permDeviceInformation :: Icons
permDeviceInformation = wrap "perm_device_information"

permIdentity :: Icons
permIdentity = wrap "perm_identity"

permMedia :: Icons
permMedia = wrap "perm_media"

permPhoneMsg :: Icons
permPhoneMsg = wrap "perm_phone_msg"

permScanWifi :: Icons
permScanWifi = wrap "perm_scan_wifi"

person :: Icons
person = wrap "person"

personAdd :: Icons
personAdd = wrap "person_add"

personOutline :: Icons
personOutline = wrap "person_outline"

personPin :: Icons
personPin = wrap "person_pin"

personPinCircle :: Icons
personPinCircle = wrap "person_pin_circle"

personalVideo :: Icons
personalVideo = wrap "personal_video"

pets :: Icons
pets = wrap "pets"

phone :: Icons
phone = wrap "phone"

phoneAndroid :: Icons
phoneAndroid = wrap "phone_android"

phoneBluetoothSpeaker :: Icons
phoneBluetoothSpeaker = wrap "phone_bluetooth_speaker"

phoneForwarded :: Icons
phoneForwarded = wrap "phone_forwarded"

phoneInTalk :: Icons
phoneInTalk = wrap "phone_in_talk"

phoneIphone :: Icons
phoneIphone = wrap "phone_iphone"

phoneLocked :: Icons
phoneLocked = wrap "phone_locked"

phoneMissed :: Icons
phoneMissed = wrap "phone_missed"

phonePaused :: Icons
phonePaused = wrap "phone_paused"

phonelink :: Icons
phonelink = wrap "phonelink"

phonelinkErase :: Icons
phonelinkErase = wrap "phonelink_erase"

phonelinkLock :: Icons
phonelinkLock = wrap "phonelink_lock"

phonelinkOff :: Icons
phonelinkOff = wrap "phonelink_off"

phonelinkRing :: Icons
phonelinkRing = wrap "phonelink_ring"

phonelinkSetup :: Icons
phonelinkSetup = wrap "phonelink_setup"

photo :: Icons
photo = wrap "photo"

photoAlbum :: Icons
photoAlbum = wrap "photo_album"

photoCamera :: Icons
photoCamera = wrap "photo_camera"

photoFilter :: Icons
photoFilter = wrap "photo_filter"

photoLibrary :: Icons
photoLibrary = wrap "photo_library"

photoSizeSelectActual :: Icons
photoSizeSelectActual = wrap "photo_size_select_actual"

photoSizeSelectLarge :: Icons
photoSizeSelectLarge = wrap "photo_size_select_large"

photoSizeSelectSmall :: Icons
photoSizeSelectSmall = wrap "photo_size_select_small"

pictureAsPdf :: Icons
pictureAsPdf = wrap "picture_as_pdf"

pictureInPicture :: Icons
pictureInPicture = wrap "picture_in_picture"

pictureInPictureAlt :: Icons
pictureInPictureAlt = wrap "picture_in_picture_alt"

pieChart :: Icons
pieChart = wrap "pie_chart"

pieChartOutlined :: Icons
pieChartOutlined = wrap "pie_chart_outlined"

pinDrop :: Icons
pinDrop = wrap "pin_drop"

place :: Icons
place = wrap "place"

playArrow :: Icons
playArrow = wrap "play_arrow"

playCircleFilled :: Icons
playCircleFilled = wrap "play_circle_filled"

playCircleOutline :: Icons
playCircleOutline = wrap "play_circle_outline"

playForWork :: Icons
playForWork = wrap "play_for_work"

playlistAdd :: Icons
playlistAdd = wrap "playlist_add"

playlistAddCheck :: Icons
playlistAddCheck = wrap "playlist_add_check"

playlistPlay :: Icons
playlistPlay = wrap "playlist_play"

plusOne :: Icons
plusOne = wrap "plus_one"

poll :: Icons
poll = wrap "poll"

polymer :: Icons
polymer = wrap "polymer"

pool :: Icons
pool = wrap "pool"

portableWifiOff :: Icons
portableWifiOff = wrap "portable_wifi_off"

portrait :: Icons
portrait = wrap "portrait"

power :: Icons
power = wrap "power"

powerInput :: Icons
powerInput = wrap "power_input"

powerSettingsNew :: Icons
powerSettingsNew = wrap "power_settings_new"

pregnantWoman :: Icons
pregnantWoman = wrap "pregnant_woman"

presentToAll :: Icons
presentToAll = wrap "present_to_all"

print :: Icons
print = wrap "print"

priorityHigh :: Icons
priorityHigh = wrap "priority_high"

public :: Icons
public = wrap "public"

publish :: Icons
publish = wrap "publish"

queryBuilder :: Icons
queryBuilder = wrap "query_builder"

questionAnswer :: Icons
questionAnswer = wrap "question_answer"

queue :: Icons
queue = wrap "queue"

queueMusic :: Icons
queueMusic = wrap "queue_music"

queuePlayNext :: Icons
queuePlayNext = wrap "queue_play_next"

radio :: Icons
radio = wrap "radio"

radioButtonChecked :: Icons
radioButtonChecked = wrap "radio_button_checked"

radioButtonUnchecked :: Icons
radioButtonUnchecked = wrap "radio_button_unchecked"

rateReview :: Icons
rateReview = wrap "rate_review"

receipt :: Icons
receipt = wrap "receipt"

recentActors :: Icons
recentActors = wrap "recent_actors"

recordVoiceOver :: Icons
recordVoiceOver = wrap "record_voice_over"

redeem :: Icons
redeem = wrap "redeem"

redo :: Icons
redo = wrap "redo"

refresh :: Icons
refresh = wrap "refresh"

remove :: Icons
remove = wrap "remove"

removeCircle :: Icons
removeCircle = wrap "remove_circle"

removeCircleOutline :: Icons
removeCircleOutline = wrap "remove_circle_outline"

removeFromQueue :: Icons
removeFromQueue = wrap "remove_from_queue"

removeRedEye :: Icons
removeRedEye = wrap "remove_red_eye"

removeShoppingCart :: Icons
removeShoppingCart = wrap "remove_shopping_cart"

reorder :: Icons
reorder = wrap "reorder"

repeat :: Icons
repeat = wrap "repeat"

repeatOne :: Icons
repeatOne = wrap "repeat_one"

replay :: Icons
replay = wrap "replay"

replay10 :: Icons
replay10 = wrap "replay_10"

replay30 :: Icons
replay30 = wrap "replay_30"

replay5 :: Icons
replay5 = wrap "replay_5"

reply :: Icons
reply = wrap "reply"

replyAll :: Icons
replyAll = wrap "reply_all"

report :: Icons
report = wrap "report"

reportProblem :: Icons
reportProblem = wrap "report_problem"

restaurant :: Icons
restaurant = wrap "restaurant"

restaurantMenu :: Icons
restaurantMenu = wrap "restaurant_menu"

restore :: Icons
restore = wrap "restore"

restorePage :: Icons
restorePage = wrap "restore_page"

ringVolume :: Icons
ringVolume = wrap "ring_volume"

room :: Icons
room = wrap "room"

roomService :: Icons
roomService = wrap "room_service"

rotate90DegreesCcw :: Icons
rotate90DegreesCcw = wrap "rotate_90_degrees_ccw"

rotateLeft :: Icons
rotateLeft = wrap "rotate_left"

rotateRight :: Icons
rotateRight = wrap "rotate_right"

roundedCorner :: Icons
roundedCorner = wrap "rounded_corner"

router :: Icons
router = wrap "router"

rowing :: Icons
rowing = wrap "rowing"

rssFeed :: Icons
rssFeed = wrap "rss_feed"

rvHookup :: Icons
rvHookup = wrap "rv_hookup"

satellite :: Icons
satellite = wrap "satellite"

save :: Icons
save = wrap "save"

scanner :: Icons
scanner = wrap "scanner"

schedule :: Icons
schedule = wrap "schedule"

school :: Icons
school = wrap "school"

screenLockLandscape :: Icons
screenLockLandscape = wrap "screen_lock_landscape"

screenLockPortrait :: Icons
screenLockPortrait = wrap "screen_lock_portrait"

screenLockRotation :: Icons
screenLockRotation = wrap "screen_lock_rotation"

screenRotation :: Icons
screenRotation = wrap "screen_rotation"

screenShare :: Icons
screenShare = wrap "screen_share"

sdCard :: Icons
sdCard = wrap "sd_card"

sdStorage :: Icons
sdStorage = wrap "sd_storage"

search :: Icons
search = wrap "search"

security :: Icons
security = wrap "security"

selectAll :: Icons
selectAll = wrap "select_all"

send :: Icons
send = wrap "send"

sentimentDissatisfied :: Icons
sentimentDissatisfied = wrap "sentiment_dissatisfied"

sentimentNeutral :: Icons
sentimentNeutral = wrap "sentiment_neutral"

sentimentSatisfied :: Icons
sentimentSatisfied = wrap "sentiment_satisfied"

sentimentVeryDissatisfied :: Icons
sentimentVeryDissatisfied = wrap "sentiment_very_dissatisfied"

sentimentVerySatisfied :: Icons
sentimentVerySatisfied = wrap "sentiment_very_satisfied"

settings :: Icons
settings = wrap "settings"

settingsApplications :: Icons
settingsApplications = wrap "settings_applications"

settingsBackupRestore :: Icons
settingsBackupRestore = wrap "settings_backup_restore"

settingsBluetooth :: Icons
settingsBluetooth = wrap "settings_bluetooth"

settingsBrightness :: Icons
settingsBrightness = wrap "settings_brightness"

settingsCell :: Icons
settingsCell = wrap "settings_cell"

settingsEthernet :: Icons
settingsEthernet = wrap "settings_ethernet"

settingsInputAntenna :: Icons
settingsInputAntenna = wrap "settings_input_antenna"

settingsInputComponent :: Icons
settingsInputComponent = wrap "settings_input_component"

settingsInputComposite :: Icons
settingsInputComposite = wrap "settings_input_composite"

settingsInputHdmi :: Icons
settingsInputHdmi = wrap "settings_input_hdmi"

settingsInputSvideo :: Icons
settingsInputSvideo = wrap "settings_input_svideo"

settingsOverscan :: Icons
settingsOverscan = wrap "settings_overscan"

settingsPhone :: Icons
settingsPhone = wrap "settings_phone"

settingsPower :: Icons
settingsPower = wrap "settings_power"

settingsRemote :: Icons
settingsRemote = wrap "settings_remote"

settingsSystemDaydream :: Icons
settingsSystemDaydream = wrap "settings_system_daydream"

settingsVoice :: Icons
settingsVoice = wrap "settings_voice"

share :: Icons
share = wrap "share"

shop :: Icons
shop = wrap "shop"

shopTwo :: Icons
shopTwo = wrap "shop_two"

shoppingBasket :: Icons
shoppingBasket = wrap "shopping_basket"

shoppingCart :: Icons
shoppingCart = wrap "shopping_cart"

shortText :: Icons
shortText = wrap "short_text"

showChart :: Icons
showChart = wrap "show_chart"

shuffle :: Icons
shuffle = wrap "shuffle"

signalCellular4Bar :: Icons
signalCellular4Bar = wrap "signal_cellular_4_bar"

signalCellularConnectedNoInternet4Bar :: Icons
signalCellularConnectedNoInternet4Bar = wrap "signal_cellular_connected_no_internet_4_bar"

signalCellularNoSim :: Icons
signalCellularNoSim = wrap "signal_cellular_no_sim"

signalCellularNull :: Icons
signalCellularNull = wrap "signal_cellular_null"

signalCellularOff :: Icons
signalCellularOff = wrap "signal_cellular_off"

signalWifi4Bar :: Icons
signalWifi4Bar = wrap "signal_wifi_4_bar"

signalWifi4BarLock :: Icons
signalWifi4BarLock = wrap "signal_wifi_4_bar_lock"

signalWifiOff :: Icons
signalWifiOff = wrap "signal_wifi_off"

simCard :: Icons
simCard = wrap "sim_card"

simCardAlert :: Icons
simCardAlert = wrap "sim_card_alert"

skipNext :: Icons
skipNext = wrap "skip_next"

skipPrevious :: Icons
skipPrevious = wrap "skip_previous"

slideshow :: Icons
slideshow = wrap "slideshow"

slowMotionVideo :: Icons
slowMotionVideo = wrap "slow_motion_video"

smartphone :: Icons
smartphone = wrap "smartphone"

smokeFree :: Icons
smokeFree = wrap "smoke_free"

smokingRooms :: Icons
smokingRooms = wrap "smoking_rooms"

sms :: Icons
sms = wrap "sms"

smsFailed :: Icons
smsFailed = wrap "sms_failed"

snooze :: Icons
snooze = wrap "snooze"

sort :: Icons
sort = wrap "sort"

sortByAlpha :: Icons
sortByAlpha = wrap "sort_by_alpha"

spa :: Icons
spa = wrap "spa"

spaceBar :: Icons
spaceBar = wrap "space_bar"

speaker :: Icons
speaker = wrap "speaker"

speakerGroup :: Icons
speakerGroup = wrap "speaker_group"

speakerNotes :: Icons
speakerNotes = wrap "speaker_notes"

speakerNotesOff :: Icons
speakerNotesOff = wrap "speaker_notes_off"

speakerPhone :: Icons
speakerPhone = wrap "speaker_phone"

spellcheck :: Icons
spellcheck = wrap "spellcheck"

star :: Icons
star = wrap "star"

starBorder :: Icons
starBorder = wrap "star_border"

starHalf :: Icons
starHalf = wrap "star_half"

stars :: Icons
stars = wrap "stars"

stayCurrentLandscape :: Icons
stayCurrentLandscape = wrap "stay_current_landscape"

stayCurrentPortrait :: Icons
stayCurrentPortrait = wrap "stay_current_portrait"

stayPrimaryLandscape :: Icons
stayPrimaryLandscape = wrap "stay_primary_landscape"

stayPrimaryPortrait :: Icons
stayPrimaryPortrait = wrap "stay_primary_portrait"

stop :: Icons
stop = wrap "stop"

stopScreenShare :: Icons
stopScreenShare = wrap "stop_screen_share"

storage :: Icons
storage = wrap "storage"

store :: Icons
store = wrap "store"

storeMallDirectory :: Icons
storeMallDirectory = wrap "store_mall_directory"

straighten :: Icons
straighten = wrap "straighten"

streetview :: Icons
streetview = wrap "streetview"

strikethroughS :: Icons
strikethroughS = wrap "strikethrough_s"

style :: Icons
style = wrap "style"

subdirectoryArrowLeft :: Icons
subdirectoryArrowLeft = wrap "subdirectory_arrow_left"

subdirectoryArrowRight :: Icons
subdirectoryArrowRight = wrap "subdirectory_arrow_right"

subject :: Icons
subject = wrap "subject"

subscriptions :: Icons
subscriptions = wrap "subscriptions"

subtitles :: Icons
subtitles = wrap "subtitles"

subway :: Icons
subway = wrap "subway"

supervisorAccount :: Icons
supervisorAccount = wrap "supervisor_account"

surroundSound :: Icons
surroundSound = wrap "surround_sound"

swapCalls :: Icons
swapCalls = wrap "swap_calls"

swapHoriz :: Icons
swapHoriz = wrap "swap_horiz"

swapVert :: Icons
swapVert = wrap "swap_vert"

swapVerticalCircle :: Icons
swapVerticalCircle = wrap "swap_vertical_circle"

switchCamera :: Icons
switchCamera = wrap "switch_camera"

switchVideo :: Icons
switchVideo = wrap "switch_video"

sync :: Icons
sync = wrap "sync"

syncDisabled :: Icons
syncDisabled = wrap "sync_disabled"

syncProblem :: Icons
syncProblem = wrap "sync_problem"

systemUpdate :: Icons
systemUpdate = wrap "system_update"

systemUpdateAlt :: Icons
systemUpdateAlt = wrap "system_update_alt"

tab :: Icons
tab = wrap "tab"

tabUnselected :: Icons
tabUnselected = wrap "tab_unselected"

tablet :: Icons
tablet = wrap "tablet"

tabletAndroid :: Icons
tabletAndroid = wrap "tablet_android"

tabletMac :: Icons
tabletMac = wrap "tablet_mac"

tagFaces :: Icons
tagFaces = wrap "tag_faces"

tapAndPlay :: Icons
tapAndPlay = wrap "tap_and_play"

terrain :: Icons
terrain = wrap "terrain"

textFields :: Icons
textFields = wrap "text_fields"

textFormat :: Icons
textFormat = wrap "text_format"

textsms :: Icons
textsms = wrap "textsms"

texture :: Icons
texture = wrap "texture"

theaters :: Icons
theaters = wrap "theaters"

thumbDown :: Icons
thumbDown = wrap "thumb_down"

thumbUp :: Icons
thumbUp = wrap "thumb_up"

thumbsUpDown :: Icons
thumbsUpDown = wrap "thumbs_up_down"

timeToLeave :: Icons
timeToLeave = wrap "time_to_leave"

timelapse :: Icons
timelapse = wrap "timelapse"

timeline :: Icons
timeline = wrap "timeline"

timer :: Icons
timer = wrap "timer"

timer10 :: Icons
timer10 = wrap "timer_10"

timer3 :: Icons
timer3 = wrap "timer_3"

timerOff :: Icons
timerOff = wrap "timer_off"

title :: Icons
title = wrap "title"

toc :: Icons
toc = wrap "toc"

today :: Icons
today = wrap "today"

toll :: Icons
toll = wrap "toll"

tonality :: Icons
tonality = wrap "tonality"

touchApp :: Icons
touchApp = wrap "touch_app"

toys :: Icons
toys = wrap "toys"

trackChanges :: Icons
trackChanges = wrap "track_changes"

traffic :: Icons
traffic = wrap "traffic"

train :: Icons
train = wrap "train"

tram :: Icons
tram = wrap "tram"

transferWithinAStation :: Icons
transferWithinAStation = wrap "transfer_within_a_station"

transform :: Icons
transform = wrap "transform"

translate :: Icons
translate = wrap "translate"

trendingDown :: Icons
trendingDown = wrap "trending_down"

trendingFlat :: Icons
trendingFlat = wrap "trending_flat"

trendingUp :: Icons
trendingUp = wrap "trending_up"

tune :: Icons
tune = wrap "tune"

turnedIn :: Icons
turnedIn = wrap "turned_in"

turnedInNot :: Icons
turnedInNot = wrap "turned_in_not"

tv :: Icons
tv = wrap "tv"

unarchive :: Icons
unarchive = wrap "unarchive"

undo :: Icons
undo = wrap "undo"

unfoldLess :: Icons
unfoldLess = wrap "unfold_less"

unfoldMore :: Icons
unfoldMore = wrap "unfold_more"

update :: Icons
update = wrap "update"

usb :: Icons
usb = wrap "usb"

verifiedUser :: Icons
verifiedUser = wrap "verified_user"

verticalAlignBottom :: Icons
verticalAlignBottom = wrap "vertical_align_bottom"

verticalAlignCenter :: Icons
verticalAlignCenter = wrap "vertical_align_center"

verticalAlignTop :: Icons
verticalAlignTop = wrap "vertical_align_top"

vibration :: Icons
vibration = wrap "vibration"

videoCall :: Icons
videoCall = wrap "video_call"

videoLabel :: Icons
videoLabel = wrap "video_label"

videoLibrary :: Icons
videoLibrary = wrap "video_library"

videocam :: Icons
videocam = wrap "videocam"

videocamOff :: Icons
videocamOff = wrap "videocam_off"

videogameAsset :: Icons
videogameAsset = wrap "videogame_asset"

viewAgenda :: Icons
viewAgenda = wrap "view_agenda"

viewArray :: Icons
viewArray = wrap "view_array"

viewCarousel :: Icons
viewCarousel = wrap "view_carousel"

viewColumn :: Icons
viewColumn = wrap "view_column"

viewComfy :: Icons
viewComfy = wrap "view_comfy"

viewCompact :: Icons
viewCompact = wrap "view_compact"

viewDay :: Icons
viewDay = wrap "view_day"

viewHeadline :: Icons
viewHeadline = wrap "view_headline"

viewList :: Icons
viewList = wrap "view_list"

viewModule :: Icons
viewModule = wrap "view_module"

viewQuilt :: Icons
viewQuilt = wrap "view_quilt"

viewStream :: Icons
viewStream = wrap "view_stream"

viewWeek :: Icons
viewWeek = wrap "view_week"

vignette :: Icons
vignette = wrap "vignette"

visibility :: Icons
visibility = wrap "visibility"

visibilityOff :: Icons
visibilityOff = wrap "visibility_off"

voiceChat :: Icons
voiceChat = wrap "voice_chat"

voicemail :: Icons
voicemail = wrap "voicemail"

volumeDown :: Icons
volumeDown = wrap "volume_down"

volumeMute :: Icons
volumeMute = wrap "volume_mute"

volumeOff :: Icons
volumeOff = wrap "volume_off"

volumeUp :: Icons
volumeUp = wrap "volume_up"

vpnKey :: Icons
vpnKey = wrap "vpn_key"

vpnLock :: Icons
vpnLock = wrap "vpn_lock"

wallpaper :: Icons
wallpaper = wrap "wallpaper"

warning :: Icons
warning = wrap "warning"

watch :: Icons
watch = wrap "watch"

watchLater :: Icons
watchLater = wrap "watch_later"

wbAuto :: Icons
wbAuto = wrap "wb_auto"

wbCloudy :: Icons
wbCloudy = wrap "wb_cloudy"

wbIncandescent :: Icons
wbIncandescent = wrap "wb_incandescent"

wbIridescent :: Icons
wbIridescent = wrap "wb_iridescent"

wbSunny :: Icons
wbSunny = wrap "wb_sunny"

wc :: Icons
wc = wrap "wc"

web :: Icons
web = wrap "web"

webAsset :: Icons
webAsset = wrap "web_asset"

weekend :: Icons
weekend = wrap "weekend"

whatshot :: Icons
whatshot = wrap "whatshot"

widgets :: Icons
widgets = wrap "widgets"

wifi :: Icons
wifi = wrap "wifi"

wifiLock :: Icons
wifiLock = wrap "wifi_lock"

wifiTethering :: Icons
wifiTethering = wrap "wifi_tethering"

work :: Icons
work = wrap "work"

wrapText :: Icons
wrapText = wrap "wrap_text"

youtubeSearchedFor :: Icons
youtubeSearchedFor = wrap "youtube_searched_for"

zoomIn :: Icons
zoomIn = wrap "zoom_in"

zoomOut :: Icons
zoomOut = wrap "zoom_out"

zoomOutMap :: Icons
zoomOutMap = wrap "zoom_out_map"
