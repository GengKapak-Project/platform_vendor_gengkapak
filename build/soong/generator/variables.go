package generator

import (
	"fmt"

	"android/soong/android"
)

func gengkapakExpandVariables(ctx android.ModuleContext, in string) string {
	gengkapakVars := ctx.Config().VendorConfig("gengkapakVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if gengkapakVars.IsSet(name) {
			return gengkapakVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
