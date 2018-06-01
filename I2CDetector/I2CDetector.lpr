program I2CDetector;

{$mode objfpc}{$H+}

{ Raspberry Pi Application                                                     }
{  Add your program code below, add additional units to the "uses" section if  }
{  required and create new units by selecting File, New Unit from the menu.    }
{                                                                              }
{  To compile your program select Run, Compile (or Run, Build) from the menu.  }

uses
  RaspberryPi,
  GlobalConfig,
  GlobalConst,
  GlobalTypes,
  Platform,
  Threads,
  SysUtils,
  Classes,
  Ultibo,
  Console,
  uI2CDetector;

var
  WindowHandle: TWindowHandle;
  fg, bg: LongWord;

begin
  WindowHandle := ConsoleWindowCreate(ConsoleDeviceGetDefault, CONSOLE_POSITION_FULLSCREEN, True);
  ConsoleWindowWriteLn(WindowHandle, 'I2C Detector');
  I2CDetect(WindowHandle);
  fg := ConsoleWindowGetForecolor(WindowHandle);
  bg := ConsoleWindowGetBackcolor(WindowHandle);
  ConsoleWindowWriteEx(WindowHandle, 'Bye', 1, 13, fg, bg);
  ThreadHalt(0);
end.

