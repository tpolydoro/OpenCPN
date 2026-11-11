#include <wx/app.h>

int main(int argc, char* argv[]) {
  if (!wxEntryStart(argc, argv)) {
    return 1;
  }

  wxTheApp->CallOnInit();
  const int result = wxTheApp->OnRun();
  wxEntryCleanup();
  return result;
}
