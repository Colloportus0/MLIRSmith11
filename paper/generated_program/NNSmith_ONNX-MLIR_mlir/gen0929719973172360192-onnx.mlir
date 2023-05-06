module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[1, 1, 1, 1, 2]> : tensor<5xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<5 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[1, 1, 1, 1, 2]> : tensor<5xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<5 x i64>
  llvm.mlir.global internal constant @constant_1(dense<4> : tensor<1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x i32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v1_0", "v5_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(-2147483648 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>> to !llvm.ptr<i32>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %36 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<5 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<5 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(5 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %54 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<5 x i64>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<5 x i64>> to !llvm.ptr<i64>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(5 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(5 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.null : !llvm.ptr<i64>
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.ptrtoint %68 : !llvm.ptr<i64> to i64
    %70 = llvm.mlir.constant(16 : index) : i64
    %71 = llvm.add %69, %70  : i64
    %72 = llvm.call @malloc(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.bitcast %72 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %74 = llvm.ptrtoint %73 : !llvm.ptr<i64> to i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.sub %70, %75  : i64
    %77 = llvm.add %74, %76  : i64
    %78 = llvm.urem %77, %70  : i64
    %79 = llvm.sub %77, %78  : i64
    %80 = llvm.inttoptr %79 : i64 to !llvm.ptr<i64>
    %81 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %82 = llvm.insertvalue %73, %81[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.insertvalue %80, %82[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.insertvalue %84, %83[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.insertvalue %65, %85[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %87 = llvm.insertvalue %66, %86[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(5 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%88 : i64)
  ^bb1(%91: i64):  // 2 preds: ^bb0, ^bb2
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %93 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.getelementptr %93[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %16, %94 : !llvm.ptr<i64>
    %95 = llvm.add %91, %90  : i64
    llvm.br ^bb1(%95 : i64)
  ^bb3:  // pred: ^bb1
    %96 = llvm.mlir.constant(5 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.null : !llvm.ptr<i64>
    %99 = llvm.getelementptr %98[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.ptrtoint %99 : !llvm.ptr<i64> to i64
    %101 = llvm.mlir.constant(16 : index) : i64
    %102 = llvm.add %100, %101  : i64
    %103 = llvm.call @malloc(%102) : (i64) -> !llvm.ptr<i8>
    %104 = llvm.bitcast %103 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %105 = llvm.ptrtoint %104 : !llvm.ptr<i64> to i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.sub %101, %106  : i64
    %108 = llvm.add %105, %107  : i64
    %109 = llvm.urem %108, %101  : i64
    %110 = llvm.sub %108, %109  : i64
    %111 = llvm.inttoptr %110 : i64 to !llvm.ptr<i64>
    %112 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %113 = llvm.insertvalue %104, %112[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.insertvalue %111, %113[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.insertvalue %115, %114[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %96, %116[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.insertvalue %97, %117[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(5 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%119 : i64)
  ^bb4(%122: i64):  // 2 preds: ^bb3, ^bb5
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %124 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.getelementptr %124[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %126 = llvm.load %125 : !llvm.ptr<i64>
    %127 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %128 = llvm.load %127 : !llvm.ptr<i64>
    %129 = llvm.mul %126, %128  : i64
    %130 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.getelementptr %130[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %131 : !llvm.ptr<i64>
    %132 = llvm.add %122, %121  : i64
    llvm.br ^bb4(%132 : i64)
  ^bb6:  // pred: ^bb4
    %133 = llvm.mlir.constant(5 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.null : !llvm.ptr<i1>
    %136 = llvm.getelementptr %135[%133] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<i1> to i64
    %138 = llvm.mlir.constant(16 : index) : i64
    %139 = llvm.add %137, %138  : i64
    %140 = llvm.call @malloc(%139) : (i64) -> !llvm.ptr<i8>
    %141 = llvm.bitcast %140 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %142 = llvm.ptrtoint %141 : !llvm.ptr<i1> to i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.sub %138, %143  : i64
    %145 = llvm.add %142, %144  : i64
    %146 = llvm.urem %145, %138  : i64
    %147 = llvm.sub %145, %146  : i64
    %148 = llvm.inttoptr %147 : i64 to !llvm.ptr<i1>
    %149 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %150 = llvm.insertvalue %141, %149[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.insertvalue %152, %151[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.insertvalue %133, %153[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %134, %154[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.mlir.constant(5 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%156 : i64)
  ^bb7(%159: i64):  // 2 preds: ^bb6, ^bb8
    %160 = llvm.icmp "slt" %159, %157 : i64
    llvm.cond_br %160, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %161 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %162 = llvm.getelementptr %161[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %163 = llvm.load %162 : !llvm.ptr<i64>
    %164 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.getelementptr %164[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %166 = llvm.load %165 : !llvm.ptr<i64>
    %167 = llvm.icmp "eq" %163, %166 : i64
    %168 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.getelementptr %168[%159] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %167, %169 : !llvm.ptr<i1>
    %170 = llvm.add %159, %158  : i64
    llvm.br ^bb7(%170 : i64)
  ^bb9:  // pred: ^bb7
    %171 = llvm.mlir.constant(5 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.null : !llvm.ptr<i64>
    %174 = llvm.getelementptr %173[%171] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %175 = llvm.ptrtoint %174 : !llvm.ptr<i64> to i64
    %176 = llvm.mlir.constant(16 : index) : i64
    %177 = llvm.add %175, %176  : i64
    %178 = llvm.call @malloc(%177) : (i64) -> !llvm.ptr<i8>
    %179 = llvm.bitcast %178 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %180 = llvm.ptrtoint %179 : !llvm.ptr<i64> to i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.sub %176, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.urem %183, %176  : i64
    %185 = llvm.sub %183, %184  : i64
    %186 = llvm.inttoptr %185 : i64 to !llvm.ptr<i64>
    %187 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %188 = llvm.insertvalue %179, %187[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.insertvalue %171, %191[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.insertvalue %172, %192[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.mlir.constant(5 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%194 : i64)
  ^bb10(%197: i64):  // 2 preds: ^bb9, ^bb11
    %198 = llvm.icmp "slt" %197, %195 : i64
    llvm.cond_br %198, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %199 = llvm.extractvalue %155[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.getelementptr %199[%197] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %201 = llvm.load %200 : !llvm.ptr<i1>
    %202 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.getelementptr %202[%197] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %204 = llvm.load %203 : !llvm.ptr<i64>
    %205 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.getelementptr %205[%197] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %207 = llvm.load %206 : !llvm.ptr<i64>
    %208 = llvm.select %201, %204, %207 : i1, i64
    %209 = llvm.extractvalue %193[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.getelementptr %209[%197] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %208, %210 : !llvm.ptr<i64>
    %211 = llvm.add %197, %196  : i64
    llvm.br ^bb10(%211 : i64)
  ^bb12:  // pred: ^bb10
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(2 : index) : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mlir.null : !llvm.ptr<i32>
    %223 = llvm.getelementptr %222[%221] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %224 = llvm.ptrtoint %223 : !llvm.ptr<i32> to i64
    %225 = llvm.mlir.constant(16 : index) : i64
    %226 = llvm.add %224, %225  : i64
    %227 = llvm.call @malloc(%226) : (i64) -> !llvm.ptr<i8>
    %228 = llvm.bitcast %227 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %229 = llvm.ptrtoint %228 : !llvm.ptr<i32> to i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.sub %225, %230  : i64
    %232 = llvm.add %229, %231  : i64
    %233 = llvm.urem %232, %225  : i64
    %234 = llvm.sub %232, %233  : i64
    %235 = llvm.inttoptr %234 : i64 to !llvm.ptr<i32>
    %236 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %237 = llvm.insertvalue %228, %236[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %238 = llvm.insertvalue %235, %237[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.insertvalue %239, %238[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %241 = llvm.insertvalue %212, %240[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %242 = llvm.insertvalue %213, %241[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %243 = llvm.insertvalue %214, %242[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %244 = llvm.insertvalue %215, %243[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %245 = llvm.insertvalue %216, %244[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %246 = llvm.insertvalue %220, %245[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %247 = llvm.insertvalue %219, %246[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %248 = llvm.insertvalue %218, %247[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %249 = llvm.insertvalue %216, %248[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %250 = llvm.insertvalue %217, %249[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%251 : i64)
  ^bb13(%254: i64):  // 2 preds: ^bb12, ^bb26
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%256 : i64)
  ^bb15(%259: i64):  // 2 preds: ^bb14, ^bb25
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%261 : i64)
  ^bb17(%264: i64):  // 2 preds: ^bb16, ^bb24
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%266 : i64)
  ^bb19(%269: i64):  // 2 preds: ^bb18, ^bb23
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %271 = llvm.mlir.constant(0 : index) : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%271 : i64)
  ^bb21(%274: i64):  // 2 preds: ^bb20, ^bb22
    %275 = llvm.icmp "slt" %274, %272 : i64
    llvm.cond_br %275, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %276 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mul %15, %277  : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mul %15, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.mlir.constant(2 : index) : i64
    %283 = llvm.mul %15, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %15, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.add %287, %274  : i64
    %289 = llvm.getelementptr %276[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %290 = llvm.load %289 : !llvm.ptr<i32>
    %291 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %292 = llvm.mlir.constant(2 : index) : i64
    %293 = llvm.mul %254, %292  : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mul %259, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mul %264, %297  : i64
    %299 = llvm.add %296, %298  : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mul %269, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.add %302, %274  : i64
    %304 = llvm.getelementptr %291[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %290, %304 : !llvm.ptr<i32>
    %305 = llvm.add %274, %273  : i64
    llvm.br ^bb21(%305 : i64)
  ^bb23:  // pred: ^bb21
    %306 = llvm.add %269, %268  : i64
    llvm.br ^bb19(%306 : i64)
  ^bb24:  // pred: ^bb19
    %307 = llvm.add %264, %263  : i64
    llvm.br ^bb17(%307 : i64)
  ^bb25:  // pred: ^bb17
    %308 = llvm.add %259, %258  : i64
    llvm.br ^bb15(%308 : i64)
  ^bb26:  // pred: ^bb15
    %309 = llvm.add %254, %253  : i64
    llvm.br ^bb13(%309 : i64)
  ^bb27:  // pred: ^bb13
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.null : !llvm.ptr<i32>
    %321 = llvm.getelementptr %320[%319] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %322 = llvm.ptrtoint %321 : !llvm.ptr<i32> to i64
    %323 = llvm.mlir.constant(16 : index) : i64
    %324 = llvm.add %322, %323  : i64
    %325 = llvm.call @malloc(%324) : (i64) -> !llvm.ptr<i8>
    %326 = llvm.bitcast %325 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i32> to i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.sub %323, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.urem %330, %323  : i64
    %332 = llvm.sub %330, %331  : i64
    %333 = llvm.inttoptr %332 : i64 to !llvm.ptr<i32>
    %334 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %335 = llvm.insertvalue %326, %334[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %336 = llvm.insertvalue %333, %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.insertvalue %337, %336[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %339 = llvm.insertvalue %310, %338[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %340 = llvm.insertvalue %311, %339[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %341 = llvm.insertvalue %312, %340[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %342 = llvm.insertvalue %313, %341[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %343 = llvm.insertvalue %314, %342[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %344 = llvm.insertvalue %318, %343[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %345 = llvm.insertvalue %317, %344[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %346 = llvm.insertvalue %316, %345[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %347 = llvm.insertvalue %314, %346[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %348 = llvm.insertvalue %315, %347[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%349 : i64)
  ^bb28(%352: i64):  // 2 preds: ^bb27, ^bb41
    %353 = llvm.icmp "slt" %352, %350 : i64
    llvm.cond_br %353, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%354 : i64)
  ^bb30(%357: i64):  // 2 preds: ^bb29, ^bb40
    %358 = llvm.icmp "slt" %357, %355 : i64
    llvm.cond_br %358, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%359 : i64)
  ^bb32(%362: i64):  // 2 preds: ^bb31, ^bb39
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%364 : i64)
  ^bb34(%367: i64):  // 2 preds: ^bb33, ^bb38
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%369 : i64)
  ^bb36(%372: i64):  // 2 preds: ^bb35, ^bb37
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %374 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mul %352, %375  : i64
    %377 = llvm.mlir.constant(2 : index) : i64
    %378 = llvm.mul %357, %377  : i64
    %379 = llvm.add %376, %378  : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mul %362, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.mul %367, %383  : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.add %385, %372  : i64
    %387 = llvm.getelementptr %374[%386] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %388 = llvm.load %387 : !llvm.ptr<i32>
    %389 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %390 = llvm.add %362, %367  : i64
    %391 = llvm.add %390, %15  : i64
    %392 = llvm.getelementptr %389[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %393 = llvm.load %392 : !llvm.ptr<i32>
    %394 = llvm.add %388, %393  : i32
    %395 = llvm.extractvalue %348[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mul %352, %396  : i64
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mul %357, %398  : i64
    %400 = llvm.add %397, %399  : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mul %362, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mul %367, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.add %406, %372  : i64
    %408 = llvm.getelementptr %395[%407] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %394, %408 : !llvm.ptr<i32>
    %409 = llvm.add %372, %371  : i64
    llvm.br ^bb36(%409 : i64)
  ^bb38:  // pred: ^bb36
    %410 = llvm.add %367, %366  : i64
    llvm.br ^bb34(%410 : i64)
  ^bb39:  // pred: ^bb34
    %411 = llvm.add %362, %361  : i64
    llvm.br ^bb32(%411 : i64)
  ^bb40:  // pred: ^bb32
    %412 = llvm.add %357, %356  : i64
    llvm.br ^bb30(%412 : i64)
  ^bb41:  // pred: ^bb30
    %413 = llvm.add %352, %351  : i64
    llvm.br ^bb28(%413 : i64)
  ^bb42:  // pred: ^bb28
    %414 = llvm.mlir.constant(1 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    %419 = llvm.mlir.constant(2 : index) : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mlir.null : !llvm.ptr<i32>
    %423 = llvm.getelementptr %422[%421] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %424 = llvm.ptrtoint %423 : !llvm.ptr<i32> to i64
    %425 = llvm.mlir.constant(16 : index) : i64
    %426 = llvm.add %424, %425  : i64
    %427 = llvm.call @malloc(%426) : (i64) -> !llvm.ptr<i8>
    %428 = llvm.bitcast %427 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i32> to i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.sub %425, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.urem %432, %425  : i64
    %434 = llvm.sub %432, %433  : i64
    %435 = llvm.inttoptr %434 : i64 to !llvm.ptr<i32>
    %436 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %437 = llvm.insertvalue %428, %436[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %435, %437[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.insertvalue %439, %438[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %414, %440[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %415, %441[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %416, %442[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %417, %443[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %420, %444[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %419, %445[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.insertvalue %417, %446[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.insertvalue %418, %447[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(1 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%449 : i64)
  ^bb43(%452: i64):  // 2 preds: ^bb42, ^bb53
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %454 = llvm.mlir.constant(0 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%454 : i64)
  ^bb45(%457: i64):  // 2 preds: ^bb44, ^bb52
    %458 = llvm.icmp "slt" %457, %455 : i64
    llvm.cond_br %458, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %459 = llvm.mlir.constant(0 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%459 : i64)
  ^bb47(%462: i64):  // 2 preds: ^bb46, ^bb51
    %463 = llvm.icmp "slt" %462, %460 : i64
    llvm.cond_br %463, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%464 : i64)
  ^bb49(%467: i64):  // 2 preds: ^bb48, ^bb50
    %468 = llvm.icmp "slt" %467, %465 : i64
    llvm.cond_br %468, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %469 = llvm.extractvalue %448[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mul %452, %470  : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %457, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mul %462, %475  : i64
    %477 = llvm.add %474, %476  : i64
    %478 = llvm.add %477, %467  : i64
    %479 = llvm.getelementptr %469[%478] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %479 : !llvm.ptr<i32>
    %480 = llvm.add %467, %466  : i64
    llvm.br ^bb49(%480 : i64)
  ^bb51:  // pred: ^bb49
    %481 = llvm.add %462, %461  : i64
    llvm.br ^bb47(%481 : i64)
  ^bb52:  // pred: ^bb47
    %482 = llvm.add %457, %456  : i64
    llvm.br ^bb45(%482 : i64)
  ^bb53:  // pred: ^bb45
    %483 = llvm.add %452, %451  : i64
    llvm.br ^bb43(%483 : i64)
  ^bb54:  // pred: ^bb43
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%484 : i64)
  ^bb55(%487: i64):  // 2 preds: ^bb54, ^bb68
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb56, ^bb69
  ^bb56:  // pred: ^bb55
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%489 : i64)
  ^bb57(%492: i64):  // 2 preds: ^bb56, ^bb67
    %493 = llvm.icmp "slt" %492, %490 : i64
    llvm.cond_br %493, ^bb58, ^bb68
  ^bb58:  // pred: ^bb57
    %494 = llvm.mlir.constant(0 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    %496 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%494 : i64)
  ^bb59(%497: i64):  // 2 preds: ^bb58, ^bb66
    %498 = llvm.icmp "slt" %497, %495 : i64
    llvm.cond_br %498, ^bb60, ^bb67
  ^bb60:  // pred: ^bb59
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%499 : i64)
  ^bb61(%502: i64):  // 2 preds: ^bb60, ^bb65
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb62, ^bb66
  ^bb62:  // pred: ^bb61
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%504 : i64)
  ^bb63(%507: i64):  // 2 preds: ^bb62, ^bb64
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb64, ^bb65
  ^bb64:  // pred: ^bb63
    %509 = llvm.extractvalue %348[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %510 = llvm.mlir.constant(2 : index) : i64
    %511 = llvm.mul %487, %510  : i64
    %512 = llvm.mlir.constant(2 : index) : i64
    %513 = llvm.mul %492, %512  : i64
    %514 = llvm.add %511, %513  : i64
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mul %497, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mul %502, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.add %520, %507  : i64
    %522 = llvm.getelementptr %509[%521] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %523 = llvm.load %522 : !llvm.ptr<i32>
    %524 = llvm.extractvalue %448[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mul %487, %525  : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mul %492, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mul %497, %530  : i64
    %532 = llvm.add %529, %531  : i64
    %533 = llvm.add %532, %507  : i64
    %534 = llvm.getelementptr %524[%533] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %535 = llvm.load %534 : !llvm.ptr<i32>
    %536 = llvm.icmp "sgt" %535, %523 : i32
    %537 = llvm.select %536, %535, %523 : i1, i32
    %538 = llvm.extractvalue %448[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mul %487, %539  : i64
    %541 = llvm.mlir.constant(2 : index) : i64
    %542 = llvm.mul %492, %541  : i64
    %543 = llvm.add %540, %542  : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mul %497, %544  : i64
    %546 = llvm.add %543, %545  : i64
    %547 = llvm.add %546, %507  : i64
    %548 = llvm.getelementptr %538[%547] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %537, %548 : !llvm.ptr<i32>
    %549 = llvm.add %507, %506  : i64
    llvm.br ^bb63(%549 : i64)
  ^bb65:  // pred: ^bb63
    %550 = llvm.add %502, %501  : i64
    llvm.br ^bb61(%550 : i64)
  ^bb66:  // pred: ^bb61
    %551 = llvm.add %497, %496  : i64
    llvm.br ^bb59(%551 : i64)
  ^bb67:  // pred: ^bb59
    %552 = llvm.add %492, %491  : i64
    llvm.br ^bb57(%552 : i64)
  ^bb68:  // pred: ^bb57
    %553 = llvm.add %487, %486  : i64
    llvm.br ^bb55(%553 : i64)
  ^bb69:  // pred: ^bb55
    %554 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %555 = llvm.insertvalue %35, %554[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %556 = llvm.insertvalue %250, %555[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %557 = llvm.insertvalue %448, %556[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %557 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v1_0", "v5_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.extractvalue %51[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %55 = llvm.mlir.constant(3 : i64) : i64
    %56 = llvm.mlir.constant(24 : i64) : i64
    %57 = llvm.call @malloc(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %59 = llvm.mlir.constant(3 : i64) : i64
    %60 = llvm.call @omTensorCreateUntyped(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.bitcast %62 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %64 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.bitcast %64 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%60, %61, %63, %65) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %66 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%60, %66) : (!llvm.ptr<i8>, i64) -> ()
    %67 = llvm.call @omTensorGetShape(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.call @omTensorGetStrides(%60) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %67[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %68[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(1 : i64) : i64
    %75 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %67[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.getelementptr %68[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(2 : i64) : i64
    %80 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.getelementptr %67[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %83 = llvm.getelementptr %68[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : i64) : i64
    %85 = llvm.getelementptr %58[%84] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %60, %85 : !llvm.ptr<ptr<i8>>
    %86 = llvm.mlir.constant(5 : i64) : i64
    %87 = llvm.call @omTensorCreateUntyped(%86) : (i64) -> !llvm.ptr<i8>
    %88 = llvm.mlir.constant(1 : i64) : i64
    %89 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %91 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.bitcast %91 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%87, %88, %90, %92) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %93 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%87, %93) : (!llvm.ptr<i8>, i64) -> ()
    %94 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %96 = llvm.mlir.constant(0 : i64) : i64
    %97 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %98 = llvm.getelementptr %94[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %100 = llvm.getelementptr %95[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(1 : i64) : i64
    %102 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %103 = llvm.getelementptr %94[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %105 = llvm.getelementptr %95[%101] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.mlir.constant(2 : i64) : i64
    %107 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %108 = llvm.getelementptr %94[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.getelementptr %95[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.mlir.constant(3 : i64) : i64
    %112 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %113 = llvm.getelementptr %94[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %115 = llvm.getelementptr %95[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.extractvalue %53[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %118 = llvm.getelementptr %94[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %53[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %120 = llvm.getelementptr %95[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.getelementptr %58[%121] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %87, %122 : !llvm.ptr<ptr<i8>>
    %123 = llvm.mlir.constant(4 : i64) : i64
    %124 = llvm.call @omTensorCreateUntyped(%123) : (i64) -> !llvm.ptr<i8>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.extractvalue %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.bitcast %126 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %128 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.bitcast %128 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%124, %125, %127, %129) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %130 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%124, %130) : (!llvm.ptr<i8>, i64) -> ()
    %131 = llvm.call @omTensorGetShape(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %132 = llvm.call @omTensorGetStrides(%124) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.mlir.constant(0 : i64) : i64
    %134 = llvm.extractvalue %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %131[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.extractvalue %54[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.getelementptr %132[%133] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %136, %137 : !llvm.ptr<i64>
    %138 = llvm.mlir.constant(1 : i64) : i64
    %139 = llvm.extractvalue %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %131[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %54[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.getelementptr %132[%138] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %141, %142 : !llvm.ptr<i64>
    %143 = llvm.mlir.constant(2 : i64) : i64
    %144 = llvm.extractvalue %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %131[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %132[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(3 : i64) : i64
    %149 = llvm.extractvalue %54[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %131[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %54[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %132[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.getelementptr %58[%153] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %124, %154 : !llvm.ptr<ptr<i8>>
    %155 = llvm.call @omTensorListCreate(%58, %55, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %155 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<211 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<211 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

