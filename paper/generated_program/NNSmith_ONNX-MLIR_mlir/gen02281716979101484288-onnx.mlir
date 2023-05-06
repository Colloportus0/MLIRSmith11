module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_4(dense<[[[[4], [5]]]]> : tensor<1x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v2_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(0 : i32) : i32
    %8 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>>
    %9 = llvm.bitcast %8 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %10 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %11 = llvm.insertvalue %9, %10[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %9, %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.insertvalue %13, %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.insertvalue %15, %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.insertvalue %17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.null : !llvm.ptr<i32>
    %33 = llvm.getelementptr %32[%31] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr<i32> to i64
    %35 = llvm.call @malloc(%34) : (i64) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.mlir.null : !llvm.ptr<i32>
    %44 = llvm.getelementptr %43[%42] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i32> to i64
    %46 = llvm.alloca %45 x i32 : (i64) -> !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%52 : i64)
  ^bb1(%55: i64):  // 2 preds: ^bb0, ^bb2
    %56 = llvm.icmp "slt" %55, %53 : i64
    llvm.cond_br %56, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %57 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.getelementptr %57[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %59 = llvm.load %58 : !llvm.ptr<i32>
    %60 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.getelementptr %60[%55] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %62 = llvm.load %61 : !llvm.ptr<i32>
    %63 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %64 = llvm.load %63 : !llvm.ptr<i32>
    %65 = llvm.mul %59, %62  : i32
    %66 = llvm.add %64, %65  : i32
    %67 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %66, %67 : !llvm.ptr<i32>
    %68 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %7, %68 : !llvm.ptr<i32>
    %69 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %70 = llvm.load %69 : !llvm.ptr<i32>
    %71 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %70, %71 : !llvm.ptr<i32>
    %72 = llvm.add %55, %54  : i64
    llvm.br ^bb1(%72 : i64)
  ^bb3:  // pred: ^bb1
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(4 : index) : i64
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.mlir.constant(4 : index) : i64
    %81 = llvm.mlir.null : !llvm.ptr<i32>
    %82 = llvm.getelementptr %81[%80] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i32> to i64
    %84 = llvm.mlir.constant(16 : index) : i64
    %85 = llvm.add %83, %84  : i64
    %86 = llvm.call @malloc(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.bitcast %86 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i32> to i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.sub %84, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.urem %91, %84  : i64
    %93 = llvm.sub %91, %92  : i64
    %94 = llvm.inttoptr %93 : i64 to !llvm.ptr<i32>
    %95 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %96 = llvm.insertvalue %87, %95[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %74, %100[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %75, %101[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.insertvalue %76, %102[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.insertvalue %79, %103[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %78, %104[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %76, %105[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %77, %106[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%108 : i64)
  ^bb4(%111: i64):  // 2 preds: ^bb3, ^bb14
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb5, ^bb15
  ^bb5:  // pred: ^bb4
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%113 : i64)
  ^bb6(%116: i64):  // 2 preds: ^bb5, ^bb13
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb7, ^bb14
  ^bb7:  // pred: ^bb6
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%118 : i64)
  ^bb8(%121: i64):  // 2 preds: ^bb7, ^bb12
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb9, ^bb13
  ^bb9:  // pred: ^bb8
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%123 : i64)
  ^bb10(%126: i64):  // 2 preds: ^bb9, ^bb11
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %128 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.getelementptr %128[%126] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %111, %132  : i64
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %116, %134  : i64
    %136 = llvm.add %133, %135  : i64
    %137 = llvm.add %136, %121  : i64
    %138 = llvm.add %137, %6  : i64
    %139 = llvm.getelementptr %131[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %140 = llvm.load %139 : !llvm.ptr<i32>
    %141 = llvm.icmp "sgt" %130, %140 : i32
    %142 = llvm.select %141, %130, %140 : i1, i32
    %143 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.mlir.constant(4 : index) : i64
    %145 = llvm.mul %111, %144  : i64
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mul %116, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mul %121, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.add %151, %126  : i64
    %153 = llvm.getelementptr %143[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %142, %153 : !llvm.ptr<i32>
    %154 = llvm.add %126, %125  : i64
    llvm.br ^bb10(%154 : i64)
  ^bb12:  // pred: ^bb10
    %155 = llvm.add %121, %120  : i64
    llvm.br ^bb8(%155 : i64)
  ^bb13:  // pred: ^bb8
    %156 = llvm.add %116, %115  : i64
    llvm.br ^bb6(%156 : i64)
  ^bb14:  // pred: ^bb6
    %157 = llvm.add %111, %110  : i64
    llvm.br ^bb4(%157 : i64)
  ^bb15:  // pred: ^bb4
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.null : !llvm.ptr<i32>
    %167 = llvm.getelementptr %166[%165] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i32> to i64
    %169 = llvm.mlir.constant(16 : index) : i64
    %170 = llvm.add %168, %169  : i64
    %171 = llvm.call @malloc(%170) : (i64) -> !llvm.ptr<i8>
    %172 = llvm.bitcast %171 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %173 = llvm.ptrtoint %172 : !llvm.ptr<i32> to i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.sub %169, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.urem %176, %169  : i64
    %178 = llvm.sub %176, %177  : i64
    %179 = llvm.inttoptr %178 : i64 to !llvm.ptr<i32>
    %180 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %181 = llvm.insertvalue %172, %180[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.insertvalue %179, %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.mlir.constant(0 : index) : i64
    %184 = llvm.insertvalue %183, %182[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.insertvalue %158, %184[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.insertvalue %159, %185[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.insertvalue %160, %186[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %161, %187[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %164, %188[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %163, %189[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %161, %190[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %162, %191[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%193 : i64)
  ^bb16(%196: i64):  // 2 preds: ^bb15, ^bb26
    %197 = llvm.icmp "slt" %196, %194 : i64
    llvm.cond_br %197, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%198 : i64)
  ^bb18(%201: i64):  // 2 preds: ^bb17, ^bb25
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%203 : i64)
  ^bb20(%206: i64):  // 2 preds: ^bb19, ^bb24
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%208 : i64)
  ^bb22(%211: i64):  // 2 preds: ^bb21, ^bb23
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %213 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mul %196, %214  : i64
    %216 = llvm.mlir.constant(4 : index) : i64
    %217 = llvm.mul %201, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mul %206, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.add %221, %211  : i64
    %223 = llvm.getelementptr %213[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %224 = llvm.load %223 : !llvm.ptr<i32>
    %225 = llvm.extractvalue %192[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %196, %226  : i64
    %228 = llvm.mlir.constant(2 : index) : i64
    %229 = llvm.mul %201, %228  : i64
    %230 = llvm.add %227, %229  : i64
    %231 = llvm.mlir.constant(2 : index) : i64
    %232 = llvm.mul %206, %231  : i64
    %233 = llvm.add %230, %232  : i64
    %234 = llvm.add %233, %211  : i64
    %235 = llvm.getelementptr %225[%234] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %224, %235 : !llvm.ptr<i32>
    %236 = llvm.add %211, %210  : i64
    llvm.br ^bb22(%236 : i64)
  ^bb24:  // pred: ^bb22
    %237 = llvm.add %206, %205  : i64
    llvm.br ^bb20(%237 : i64)
  ^bb25:  // pred: ^bb20
    %238 = llvm.add %201, %200  : i64
    llvm.br ^bb18(%238 : i64)
  ^bb26:  // pred: ^bb18
    %239 = llvm.add %196, %195  : i64
    llvm.br ^bb16(%239 : i64)
  ^bb27:  // pred: ^bb16
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(4 : index) : i64
    %246 = llvm.mlir.constant(4 : index) : i64
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mlir.null : !llvm.ptr<i1>
    %249 = llvm.getelementptr %248[%247] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i1> to i64
    %251 = llvm.mlir.constant(16 : index) : i64
    %252 = llvm.add %250, %251  : i64
    %253 = llvm.call @malloc(%252) : (i64) -> !llvm.ptr<i8>
    %254 = llvm.bitcast %253 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<i1> to i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.sub %251, %256  : i64
    %258 = llvm.add %255, %257  : i64
    %259 = llvm.urem %258, %251  : i64
    %260 = llvm.sub %258, %259  : i64
    %261 = llvm.inttoptr %260 : i64 to !llvm.ptr<i1>
    %262 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %263 = llvm.insertvalue %254, %262[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.insertvalue %261, %263[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.mlir.constant(0 : index) : i64
    %266 = llvm.insertvalue %265, %264[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %240, %266[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %241, %267[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %242, %268[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %243, %269[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %246, %270[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %243, %272[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %244, %273[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(0 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%275 : i64)
  ^bb28(%278: i64):  // 2 preds: ^bb27, ^bb38
    %279 = llvm.icmp "slt" %278, %276 : i64
    llvm.cond_br %279, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %280 = llvm.mlir.constant(0 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    %282 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%280 : i64)
  ^bb30(%283: i64):  // 2 preds: ^bb29, ^bb37
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.mlir.constant(2 : index) : i64
    %287 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%285 : i64)
  ^bb32(%288: i64):  // 2 preds: ^bb31, ^bb36
    %289 = llvm.icmp "slt" %288, %286 : i64
    llvm.cond_br %289, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %290 = llvm.mlir.constant(0 : index) : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%290 : i64)
  ^bb34(%293: i64):  // 2 preds: ^bb33, ^bb35
    %294 = llvm.icmp "slt" %293, %291 : i64
    llvm.cond_br %294, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %295 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(4 : index) : i64
    %297 = llvm.mul %278, %296  : i64
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mul %283, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mul %288, %301  : i64
    %303 = llvm.add %300, %302  : i64
    %304 = llvm.add %303, %293  : i64
    %305 = llvm.getelementptr %295[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.icmp "ne" %306, %7 : i32
    %308 = llvm.extractvalue %274[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mul %278, %309  : i64
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.mul %283, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mul %288, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.add %316, %293  : i64
    %318 = llvm.getelementptr %308[%317] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %307, %318 : !llvm.ptr<i1>
    %319 = llvm.add %293, %292  : i64
    llvm.br ^bb34(%319 : i64)
  ^bb36:  // pred: ^bb34
    %320 = llvm.add %288, %287  : i64
    llvm.br ^bb32(%320 : i64)
  ^bb37:  // pred: ^bb32
    %321 = llvm.add %283, %282  : i64
    llvm.br ^bb30(%321 : i64)
  ^bb38:  // pred: ^bb30
    %322 = llvm.add %278, %277  : i64
    llvm.br ^bb28(%322 : i64)
  ^bb39:  // pred: ^bb28
    %323 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %324 = llvm.insertvalue %41, %323[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %325 = llvm.insertvalue %192, %324[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %326 = llvm.insertvalue %274, %325[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %326 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v2_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.extractvalue %23[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %27 = llvm.mlir.constant(3 : i64) : i64
    %28 = llvm.mlir.constant(24 : i64) : i64
    %29 = llvm.call @malloc(%28) : (i64) -> !llvm.ptr<i8>
    %30 = llvm.bitcast %29 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %31 = llvm.mlir.constant(0 : i64) : i64
    %32 = llvm.call @omTensorCreateUntyped(%31) : (i64) -> !llvm.ptr<i8>
    %33 = llvm.mlir.constant(1 : i64) : i64
    %34 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.bitcast %34 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %36 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.bitcast %36 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%32, %33, %35, %37) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %38 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%32, %38) : (!llvm.ptr<i8>, i64) -> ()
    %39 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %41 = llvm.mlir.constant(0 : i64) : i64
    %42 = llvm.getelementptr %30[%41] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %32, %42 : !llvm.ptr<ptr<i8>>
    %43 = llvm.mlir.constant(4 : i64) : i64
    %44 = llvm.call @omTensorCreateUntyped(%43) : (i64) -> !llvm.ptr<i8>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.bitcast %46 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %48 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.bitcast %48 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%44, %45, %47, %49) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %50 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%44, %50) : (!llvm.ptr<i8>, i64) -> ()
    %51 = llvm.call @omTensorGetShape(%44) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %52 = llvm.call @omTensorGetStrides(%44) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.getelementptr %51[%53] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %54, %55 : !llvm.ptr<i64>
    %56 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.getelementptr %52[%53] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %56, %57 : !llvm.ptr<i64>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.getelementptr %51[%58] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %59, %60 : !llvm.ptr<i64>
    %61 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.getelementptr %52[%58] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %61, %62 : !llvm.ptr<i64>
    %63 = llvm.mlir.constant(2 : i64) : i64
    %64 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %51[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %52[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.mlir.constant(3 : i64) : i64
    %69 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %51[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %52[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.getelementptr %30[%73] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %44, %74 : !llvm.ptr<ptr<i8>>
    %75 = llvm.mlir.constant(4 : i64) : i64
    %76 = llvm.call @omTensorCreateUntyped(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %26[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.bitcast %78 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %80 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.bitcast %80 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%76, %77, %79, %81) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %82 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%76, %82) : (!llvm.ptr<i8>, i64) -> ()
    %83 = llvm.call @omTensorGetShape(%76) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.call @omTensorGetStrides(%76) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %85 = llvm.mlir.constant(0 : i64) : i64
    %86 = llvm.extractvalue %26[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.getelementptr %83[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.extractvalue %26[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %84[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.mlir.constant(1 : i64) : i64
    %91 = llvm.extractvalue %26[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %83[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.extractvalue %26[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.getelementptr %84[%90] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %93, %94 : !llvm.ptr<i64>
    %95 = llvm.mlir.constant(2 : i64) : i64
    %96 = llvm.extractvalue %26[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %83[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %26[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %84[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(3 : i64) : i64
    %101 = llvm.extractvalue %26[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %83[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %26[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %84[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.getelementptr %30[%105] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %76, %106 : !llvm.ptr<ptr<i8>>
    %107 = llvm.call @omTensorListCreate(%30, %27, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %107 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<60 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<60 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<197 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<197 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

