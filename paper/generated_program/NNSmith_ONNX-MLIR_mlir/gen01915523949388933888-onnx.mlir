module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[2, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %arg17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(-2147483648 : i32) : i32
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %32 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %39 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(4 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %51 = llvm.bitcast %50 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %52 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %53 = llvm.insertvalue %51, %52[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %54 = llvm.insertvalue %51, %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %55 = llvm.mlir.constant(0 : index) : i64
    %56 = llvm.insertvalue %55, %54[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %58 = llvm.bitcast %57 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %59 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %60 = llvm.insertvalue %58, %59[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.insertvalue %58, %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.insertvalue %62, %61[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(4 : index) : i64
    %65 = llvm.insertvalue %64, %63[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.mlir.constant(4 : index) : i64
    %74 = llvm.mlir.constant(4 : index) : i64
    %75 = llvm.mlir.constant(8 : index) : i64
    %76 = llvm.mlir.null : !llvm.ptr<i32>
    %77 = llvm.getelementptr %76[%75] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i32> to i64
    %79 = llvm.mlir.constant(16 : index) : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.call @malloc(%80) : (i64) -> !llvm.ptr<i8>
    %82 = llvm.bitcast %81 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i32> to i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.sub %79, %84  : i64
    %86 = llvm.add %83, %85  : i64
    %87 = llvm.urem %86, %79  : i64
    %88 = llvm.sub %86, %87  : i64
    %89 = llvm.inttoptr %88 : i64 to !llvm.ptr<i32>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %91 = llvm.insertvalue %82, %90[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %68, %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %69, %95[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %70, %96[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %71, %97[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.insertvalue %74, %98[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.insertvalue %73, %99[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.insertvalue %71, %100[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %72, %101[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%103 : i64)
  ^bb1(%106: i64):  // 2 preds: ^bb0, ^bb11
    %107 = llvm.icmp "slt" %106, %104 : i64
    llvm.cond_br %107, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %108 = llvm.mlir.constant(0 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%108 : i64)
  ^bb3(%111: i64):  // 2 preds: ^bb2, ^bb10
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%113 : i64)
  ^bb5(%116: i64):  // 2 preds: ^bb4, ^bb9
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%118 : i64)
  ^bb7(%121: i64):  // 2 preds: ^bb6, ^bb8
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %123 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mul %111, %124  : i64
    %126 = llvm.add %125, %116  : i64
    %127 = llvm.add %126, %24  : i64
    %128 = llvm.getelementptr %123[%127] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %129 = llvm.load %128 : !llvm.ptr<i32>
    %130 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mul %106, %131  : i64
    %133 = llvm.mlir.constant(2 : index) : i64
    %134 = llvm.mul %111, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %24, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.add %138, %121  : i64
    %140 = llvm.getelementptr %130[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %141 = llvm.load %140 : !llvm.ptr<i32>
    %142 = llvm.icmp "slt" %129, %141 : i32
    %143 = llvm.select %142, %129, %141 : i1, i32
    %144 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.mlir.constant(4 : index) : i64
    %146 = llvm.mul %106, %145  : i64
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mul %111, %147  : i64
    %149 = llvm.add %146, %148  : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mul %116, %150  : i64
    %152 = llvm.add %149, %151  : i64
    %153 = llvm.add %152, %121  : i64
    %154 = llvm.getelementptr %144[%153] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %143, %154 : !llvm.ptr<i32>
    %155 = llvm.add %121, %120  : i64
    llvm.br ^bb7(%155 : i64)
  ^bb9:  // pred: ^bb7
    %156 = llvm.add %116, %115  : i64
    llvm.br ^bb5(%156 : i64)
  ^bb10:  // pred: ^bb5
    %157 = llvm.add %111, %110  : i64
    llvm.br ^bb3(%157 : i64)
  ^bb11:  // pred: ^bb3
    %158 = llvm.add %106, %105  : i64
    llvm.br ^bb1(%158 : i64)
  ^bb12:  // pred: ^bb1
    %159 = llvm.mlir.constant(4 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.mlir.null : !llvm.ptr<i64>
    %162 = llvm.getelementptr %161[%159] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %163 = llvm.ptrtoint %162 : !llvm.ptr<i64> to i64
    %164 = llvm.mlir.constant(16 : index) : i64
    %165 = llvm.add %163, %164  : i64
    %166 = llvm.call @malloc(%165) : (i64) -> !llvm.ptr<i8>
    %167 = llvm.bitcast %166 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %168 = llvm.ptrtoint %167 : !llvm.ptr<i64> to i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.sub %164, %169  : i64
    %171 = llvm.add %168, %170  : i64
    %172 = llvm.urem %171, %164  : i64
    %173 = llvm.sub %171, %172  : i64
    %174 = llvm.inttoptr %173 : i64 to !llvm.ptr<i64>
    %175 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %176 = llvm.insertvalue %167, %175[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.insertvalue %174, %176[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.insertvalue %178, %177[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %180 = llvm.insertvalue %159, %179[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %160, %180[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(4 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%182 : i64)
  ^bb13(%185: i64):  // 2 preds: ^bb12, ^bb14
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %187 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.getelementptr %187[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %23, %188 : !llvm.ptr<i64>
    %189 = llvm.add %185, %184  : i64
    llvm.br ^bb13(%189 : i64)
  ^bb15:  // pred: ^bb13
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i64>
    %193 = llvm.getelementptr %192[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i64> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i64> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i64>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %190, %210[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %191, %211[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%213 : i64)
  ^bb16(%216: i64):  // 2 preds: ^bb15, ^bb17
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %218 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.getelementptr %218[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %220 = llvm.load %219 : !llvm.ptr<i64>
    %221 = llvm.extractvalue %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %222 = llvm.load %221 : !llvm.ptr<i64>
    %223 = llvm.mul %220, %222  : i64
    %224 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %223, %225 : !llvm.ptr<i64>
    %226 = llvm.add %216, %215  : i64
    llvm.br ^bb16(%226 : i64)
  ^bb18:  // pred: ^bb16
    %227 = llvm.mlir.constant(4 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.null : !llvm.ptr<i1>
    %230 = llvm.getelementptr %229[%227] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %231 = llvm.ptrtoint %230 : !llvm.ptr<i1> to i64
    %232 = llvm.mlir.constant(16 : index) : i64
    %233 = llvm.add %231, %232  : i64
    %234 = llvm.call @malloc(%233) : (i64) -> !llvm.ptr<i8>
    %235 = llvm.bitcast %234 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %236 = llvm.ptrtoint %235 : !llvm.ptr<i1> to i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.sub %232, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.urem %239, %232  : i64
    %241 = llvm.sub %239, %240  : i64
    %242 = llvm.inttoptr %241 : i64 to !llvm.ptr<i1>
    %243 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %244 = llvm.insertvalue %235, %243[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.insertvalue %242, %244[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.insertvalue %246, %245[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %248 = llvm.insertvalue %227, %247[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.insertvalue %228, %248[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(4 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%250 : i64)
  ^bb19(%253: i64):  // 2 preds: ^bb18, ^bb20
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %255 = llvm.extractvalue %49[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.getelementptr %255[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %257 = llvm.load %256 : !llvm.ptr<i64>
    %258 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.getelementptr %258[%253] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %260 = llvm.load %259 : !llvm.ptr<i64>
    %261 = llvm.icmp "eq" %257, %260 : i64
    %262 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.getelementptr %262[%253] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %261, %263 : !llvm.ptr<i1>
    %264 = llvm.add %253, %252  : i64
    llvm.br ^bb19(%264 : i64)
  ^bb21:  // pred: ^bb19
    %265 = llvm.mlir.constant(4 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    %267 = llvm.mlir.null : !llvm.ptr<i64>
    %268 = llvm.getelementptr %267[%265] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %269 = llvm.ptrtoint %268 : !llvm.ptr<i64> to i64
    %270 = llvm.mlir.constant(16 : index) : i64
    %271 = llvm.add %269, %270  : i64
    %272 = llvm.call @malloc(%271) : (i64) -> !llvm.ptr<i8>
    %273 = llvm.bitcast %272 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %274 = llvm.ptrtoint %273 : !llvm.ptr<i64> to i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.sub %270, %275  : i64
    %277 = llvm.add %274, %276  : i64
    %278 = llvm.urem %277, %270  : i64
    %279 = llvm.sub %277, %278  : i64
    %280 = llvm.inttoptr %279 : i64 to !llvm.ptr<i64>
    %281 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %282 = llvm.insertvalue %273, %281[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.insertvalue %280, %282[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.insertvalue %284, %283[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %265, %285[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %266, %286[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(4 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%288 : i64)
  ^bb22(%291: i64):  // 2 preds: ^bb21, ^bb23
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %293 = llvm.extractvalue %249[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.getelementptr %293[%291] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %295 = llvm.load %294 : !llvm.ptr<i1>
    %296 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.getelementptr %296[%291] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %298 = llvm.load %297 : !llvm.ptr<i64>
    %299 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.getelementptr %299[%291] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %301 = llvm.load %300 : !llvm.ptr<i64>
    %302 = llvm.select %295, %298, %301 : i1, i64
    %303 = llvm.extractvalue %287[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.getelementptr %303[%291] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %302, %304 : !llvm.ptr<i64>
    %305 = llvm.add %291, %290  : i64
    llvm.br ^bb22(%305 : i64)
  ^bb24:  // pred: ^bb22
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(2 : index) : i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.constant(8 : index) : i64
    %314 = llvm.mlir.null : !llvm.ptr<i32>
    %315 = llvm.getelementptr %314[%313] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.ptrtoint %315 : !llvm.ptr<i32> to i64
    %317 = llvm.mlir.constant(16 : index) : i64
    %318 = llvm.add %316, %317  : i64
    %319 = llvm.call @malloc(%318) : (i64) -> !llvm.ptr<i8>
    %320 = llvm.bitcast %319 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %321 = llvm.ptrtoint %320 : !llvm.ptr<i32> to i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.sub %317, %322  : i64
    %324 = llvm.add %321, %323  : i64
    %325 = llvm.urem %324, %317  : i64
    %326 = llvm.sub %324, %325  : i64
    %327 = llvm.inttoptr %326 : i64 to !llvm.ptr<i32>
    %328 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %329 = llvm.insertvalue %320, %328[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %327, %329[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.insertvalue %331, %330[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %306, %332[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %307, %333[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %308, %334[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %309, %335[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %312, %336[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %311, %337[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %309, %338[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %310, %339[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%341 : i64)
  ^bb25(%344: i64):  // 2 preds: ^bb24, ^bb35
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%346 : i64)
  ^bb27(%349: i64):  // 2 preds: ^bb26, ^bb34
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %351 = llvm.mlir.constant(0 : index) : i64
    %352 = llvm.mlir.constant(2 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%351 : i64)
  ^bb29(%354: i64):  // 2 preds: ^bb28, ^bb33
    %355 = llvm.icmp "slt" %354, %352 : i64
    llvm.cond_br %355, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%356 : i64)
  ^bb31(%359: i64):  // 2 preds: ^bb30, ^bb32
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %361 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.mlir.constant(4 : index) : i64
    %363 = llvm.mul %344, %362  : i64
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mul %24, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.mlir.constant(2 : index) : i64
    %368 = llvm.mul %354, %367  : i64
    %369 = llvm.add %366, %368  : i64
    %370 = llvm.add %369, %359  : i64
    %371 = llvm.getelementptr %361[%370] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %372 = llvm.load %371 : !llvm.ptr<i32>
    %373 = llvm.extractvalue %340[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(4 : index) : i64
    %375 = llvm.mul %344, %374  : i64
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mul %349, %376  : i64
    %378 = llvm.add %375, %377  : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mul %354, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.add %381, %359  : i64
    %383 = llvm.getelementptr %373[%382] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %372, %383 : !llvm.ptr<i32>
    %384 = llvm.add %359, %358  : i64
    llvm.br ^bb31(%384 : i64)
  ^bb33:  // pred: ^bb31
    %385 = llvm.add %354, %353  : i64
    llvm.br ^bb29(%385 : i64)
  ^bb34:  // pred: ^bb29
    %386 = llvm.add %349, %348  : i64
    llvm.br ^bb27(%386 : i64)
  ^bb35:  // pred: ^bb27
    %387 = llvm.add %344, %343  : i64
    llvm.br ^bb25(%387 : i64)
  ^bb36:  // pred: ^bb25
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mlir.constant(2 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.constant(4 : index) : i64
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(8 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i32>
    %397 = llvm.getelementptr %396[%395] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i32> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i32> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i32>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %388, %414[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %389, %415[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %390, %416[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %391, %417[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %394, %418[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %391, %420[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %392, %421[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(2 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%423 : i64)
  ^bb37(%426: i64):  // 2 preds: ^bb36, ^bb47
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%428 : i64)
  ^bb39(%431: i64):  // 2 preds: ^bb38, ^bb46
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%433 : i64)
  ^bb41(%436: i64):  // 2 preds: ^bb40, ^bb45
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %438 = llvm.mlir.constant(0 : index) : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%438 : i64)
  ^bb43(%441: i64):  // 2 preds: ^bb42, ^bb44
    %442 = llvm.icmp "slt" %441, %439 : i64
    llvm.cond_br %442, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %443 = llvm.extractvalue %102[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(4 : index) : i64
    %445 = llvm.mul %426, %444  : i64
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mul %431, %446  : i64
    %448 = llvm.add %445, %447  : i64
    %449 = llvm.mlir.constant(2 : index) : i64
    %450 = llvm.mul %436, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.add %451, %441  : i64
    %453 = llvm.getelementptr %443[%452] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %454 = llvm.load %453 : !llvm.ptr<i32>
    %455 = llvm.mlir.constant(false) : i1
    %456 = "llvm.intr.abs"(%454, %455) : (i32, i1) -> i32
    %457 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.mlir.constant(4 : index) : i64
    %459 = llvm.mul %426, %458  : i64
    %460 = llvm.mlir.constant(4 : index) : i64
    %461 = llvm.mul %431, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mul %436, %463  : i64
    %465 = llvm.add %462, %464  : i64
    %466 = llvm.add %465, %441  : i64
    %467 = llvm.getelementptr %457[%466] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %456, %467 : !llvm.ptr<i32>
    %468 = llvm.add %441, %440  : i64
    llvm.br ^bb43(%468 : i64)
  ^bb45:  // pred: ^bb43
    %469 = llvm.add %436, %435  : i64
    llvm.br ^bb41(%469 : i64)
  ^bb46:  // pred: ^bb41
    %470 = llvm.add %431, %430  : i64
    llvm.br ^bb39(%470 : i64)
  ^bb47:  // pred: ^bb39
    %471 = llvm.add %426, %425  : i64
    llvm.br ^bb37(%471 : i64)
  ^bb48:  // pred: ^bb37
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mlir.constant(4 : index) : i64
    %478 = llvm.mlir.null : !llvm.ptr<i32>
    %479 = llvm.getelementptr %478[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i32> to i64
    %481 = llvm.mlir.constant(16 : index) : i64
    %482 = llvm.add %480, %481  : i64
    %483 = llvm.call @malloc(%482) : (i64) -> !llvm.ptr<i8>
    %484 = llvm.bitcast %483 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i32> to i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.sub %481, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.urem %488, %481  : i64
    %490 = llvm.sub %488, %489  : i64
    %491 = llvm.inttoptr %490 : i64 to !llvm.ptr<i32>
    %492 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %493 = llvm.insertvalue %484, %492[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %494 = llvm.insertvalue %491, %493[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.insertvalue %495, %494[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %497 = llvm.insertvalue %472, %496[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %498 = llvm.insertvalue %473, %497[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %499 = llvm.insertvalue %474, %498[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %500 = llvm.insertvalue %476, %499[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %501 = llvm.insertvalue %474, %500[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %502 = llvm.insertvalue %475, %501[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%503 : i64)
  ^bb49(%506: i64):  // 2 preds: ^bb48, ^bb56
    %507 = llvm.icmp "slt" %506, %504 : i64
    llvm.cond_br %507, ^bb50, ^bb57
  ^bb50:  // pred: ^bb49
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.mlir.constant(2 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%508 : i64)
  ^bb51(%511: i64):  // 2 preds: ^bb50, ^bb55
    %512 = llvm.icmp "slt" %511, %509 : i64
    llvm.cond_br %512, ^bb52, ^bb56
  ^bb52:  // pred: ^bb51
    %513 = llvm.mlir.constant(0 : index) : i64
    %514 = llvm.mlir.constant(2 : index) : i64
    %515 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%513 : i64)
  ^bb53(%516: i64):  // 2 preds: ^bb52, ^bb54
    %517 = llvm.icmp "slt" %516, %514 : i64
    llvm.cond_br %517, ^bb54, ^bb55
  ^bb54:  // pred: ^bb53
    %518 = llvm.extractvalue %502[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %519 = llvm.mlir.constant(4 : index) : i64
    %520 = llvm.mul %506, %519  : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mul %511, %521  : i64
    %523 = llvm.add %520, %522  : i64
    %524 = llvm.add %523, %516  : i64
    %525 = llvm.getelementptr %518[%524] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %22, %525 : !llvm.ptr<i32>
    %526 = llvm.add %516, %515  : i64
    llvm.br ^bb53(%526 : i64)
  ^bb55:  // pred: ^bb53
    %527 = llvm.add %511, %510  : i64
    llvm.br ^bb51(%527 : i64)
  ^bb56:  // pred: ^bb51
    %528 = llvm.add %506, %505  : i64
    llvm.br ^bb49(%528 : i64)
  ^bb57:  // pred: ^bb49
    %529 = llvm.mlir.constant(0 : index) : i64
    %530 = llvm.mlir.constant(2 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%529 : i64)
  ^bb58(%532: i64):  // 2 preds: ^bb57, ^bb68
    %533 = llvm.icmp "slt" %532, %530 : i64
    llvm.cond_br %533, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %534 = llvm.mlir.constant(0 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%534 : i64)
  ^bb60(%537: i64):  // 2 preds: ^bb59, ^bb67
    %538 = llvm.icmp "slt" %537, %535 : i64
    llvm.cond_br %538, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %539 = llvm.mlir.constant(0 : index) : i64
    %540 = llvm.mlir.constant(2 : index) : i64
    %541 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%539 : i64)
  ^bb62(%542: i64):  // 2 preds: ^bb61, ^bb66
    %543 = llvm.icmp "slt" %542, %540 : i64
    llvm.cond_br %543, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %544 = llvm.mlir.constant(0 : index) : i64
    %545 = llvm.mlir.constant(2 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%544 : i64)
  ^bb64(%547: i64):  // 2 preds: ^bb63, ^bb65
    %548 = llvm.icmp "slt" %547, %545 : i64
    llvm.cond_br %548, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %549 = llvm.extractvalue %422[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %550 = llvm.mlir.constant(4 : index) : i64
    %551 = llvm.mul %532, %550  : i64
    %552 = llvm.mlir.constant(4 : index) : i64
    %553 = llvm.mul %537, %552  : i64
    %554 = llvm.add %551, %553  : i64
    %555 = llvm.mlir.constant(2 : index) : i64
    %556 = llvm.mul %542, %555  : i64
    %557 = llvm.add %554, %556  : i64
    %558 = llvm.add %557, %547  : i64
    %559 = llvm.getelementptr %549[%558] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %560 = llvm.load %559 : !llvm.ptr<i32>
    %561 = llvm.extractvalue %502[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %562 = llvm.mlir.constant(4 : index) : i64
    %563 = llvm.mul %537, %562  : i64
    %564 = llvm.mlir.constant(2 : index) : i64
    %565 = llvm.mul %542, %564  : i64
    %566 = llvm.add %563, %565  : i64
    %567 = llvm.add %566, %547  : i64
    %568 = llvm.getelementptr %561[%567] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %569 = llvm.load %568 : !llvm.ptr<i32>
    %570 = llvm.icmp "sgt" %569, %560 : i32
    %571 = llvm.select %570, %569, %560 : i1, i32
    %572 = llvm.extractvalue %502[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %573 = llvm.mlir.constant(4 : index) : i64
    %574 = llvm.mul %537, %573  : i64
    %575 = llvm.mlir.constant(2 : index) : i64
    %576 = llvm.mul %542, %575  : i64
    %577 = llvm.add %574, %576  : i64
    %578 = llvm.add %577, %547  : i64
    %579 = llvm.getelementptr %572[%578] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %571, %579 : !llvm.ptr<i32>
    %580 = llvm.add %547, %546  : i64
    llvm.br ^bb64(%580 : i64)
  ^bb66:  // pred: ^bb64
    %581 = llvm.add %542, %541  : i64
    llvm.br ^bb62(%581 : i64)
  ^bb67:  // pred: ^bb62
    %582 = llvm.add %537, %536  : i64
    llvm.br ^bb60(%582 : i64)
  ^bb68:  // pred: ^bb60
    %583 = llvm.add %532, %531  : i64
    llvm.br ^bb58(%583 : i64)
  ^bb69:  // pred: ^bb58
    %584 = llvm.mlir.constant(1 : index) : i64
    %585 = llvm.mlir.constant(2 : index) : i64
    %586 = llvm.mlir.constant(2 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    %588 = llvm.mlir.constant(4 : index) : i64
    %589 = llvm.mlir.constant(4 : index) : i64
    %590 = llvm.mlir.null : !llvm.ptr<i32>
    %591 = llvm.getelementptr %590[%589] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %592 = llvm.ptrtoint %591 : !llvm.ptr<i32> to i64
    %593 = llvm.mlir.constant(16 : index) : i64
    %594 = llvm.add %592, %593  : i64
    %595 = llvm.call @malloc(%594) : (i64) -> !llvm.ptr<i8>
    %596 = llvm.bitcast %595 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %597 = llvm.ptrtoint %596 : !llvm.ptr<i32> to i64
    %598 = llvm.mlir.constant(1 : index) : i64
    %599 = llvm.sub %593, %598  : i64
    %600 = llvm.add %597, %599  : i64
    %601 = llvm.urem %600, %593  : i64
    %602 = llvm.sub %600, %601  : i64
    %603 = llvm.inttoptr %602 : i64 to !llvm.ptr<i32>
    %604 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %605 = llvm.insertvalue %596, %604[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %606 = llvm.insertvalue %603, %605[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.insertvalue %607, %606[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %609 = llvm.insertvalue %584, %608[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %610 = llvm.insertvalue %585, %609[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %611 = llvm.insertvalue %586, %610[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %612 = llvm.insertvalue %588, %611[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %613 = llvm.insertvalue %586, %612[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %614 = llvm.insertvalue %587, %613[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%615 : i64)
  ^bb70(%618: i64):  // 2 preds: ^bb69, ^bb77
    %619 = llvm.icmp "slt" %618, %616 : i64
    llvm.cond_br %619, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %620 = llvm.mlir.constant(0 : index) : i64
    %621 = llvm.mlir.constant(2 : index) : i64
    %622 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%620 : i64)
  ^bb72(%623: i64):  // 2 preds: ^bb71, ^bb76
    %624 = llvm.icmp "slt" %623, %621 : i64
    llvm.cond_br %624, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %625 = llvm.mlir.constant(0 : index) : i64
    %626 = llvm.mlir.constant(2 : index) : i64
    %627 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%625 : i64)
  ^bb74(%628: i64):  // 2 preds: ^bb73, ^bb75
    %629 = llvm.icmp "slt" %628, %626 : i64
    llvm.cond_br %629, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %630 = llvm.extractvalue %502[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %631 = llvm.mlir.constant(4 : index) : i64
    %632 = llvm.mul %618, %631  : i64
    %633 = llvm.mlir.constant(2 : index) : i64
    %634 = llvm.mul %623, %633  : i64
    %635 = llvm.add %632, %634  : i64
    %636 = llvm.add %635, %628  : i64
    %637 = llvm.getelementptr %630[%636] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %638 = llvm.load %637 : !llvm.ptr<i32>
    %639 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %640 = llvm.load %639 : !llvm.ptr<i32>
    %641 = llvm.icmp "slt" %638, %640 : i32
    %642 = llvm.select %641, %640, %638 : i1, i32
    %643 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %644 = llvm.load %643 : !llvm.ptr<i32>
    %645 = llvm.icmp "slt" %642, %644 : i32
    %646 = llvm.select %645, %642, %644 : i1, i32
    %647 = llvm.extractvalue %614[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %648 = llvm.mlir.constant(4 : index) : i64
    %649 = llvm.mul %618, %648  : i64
    %650 = llvm.mlir.constant(2 : index) : i64
    %651 = llvm.mul %623, %650  : i64
    %652 = llvm.add %649, %651  : i64
    %653 = llvm.add %652, %628  : i64
    %654 = llvm.getelementptr %647[%653] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %646, %654 : !llvm.ptr<i32>
    %655 = llvm.add %628, %627  : i64
    llvm.br ^bb74(%655 : i64)
  ^bb76:  // pred: ^bb74
    %656 = llvm.add %623, %622  : i64
    llvm.br ^bb72(%656 : i64)
  ^bb77:  // pred: ^bb72
    %657 = llvm.add %618, %617  : i64
    llvm.br ^bb70(%657 : i64)
  ^bb78:  // pred: ^bb70
    %658 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %659 = llvm.insertvalue %340, %658[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %660 = llvm.insertvalue %614, %659[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %660 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v6_0", "v5_0"], llvm.emit_c_interface, output_names = ["v2_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %77, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %78 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %79 = llvm.extractvalue %78[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %80 = llvm.extractvalue %78[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %81 = llvm.mlir.constant(2 : i64) : i64
    %82 = llvm.mlir.constant(16 : i64) : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(4 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %79[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(3 : i64) : i64
    %111 = llvm.extractvalue %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %93[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %94[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(0 : i64) : i64
    %116 = llvm.getelementptr %84[%115] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %116 : !llvm.ptr<ptr<i8>>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.call @omTensorCreateUntyped(%117) : (i64) -> !llvm.ptr<i8>
    %119 = llvm.mlir.constant(1 : i64) : i64
    %120 = llvm.extractvalue %80[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %121 = llvm.bitcast %120 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %122 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %123 = llvm.bitcast %122 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%118, %119, %121, %123) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %124 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%118, %124) : (!llvm.ptr<i8>, i64) -> ()
    %125 = llvm.call @omTensorGetShape(%118) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.call @omTensorGetStrides(%118) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %127 = llvm.mlir.constant(0 : i64) : i64
    %128 = llvm.extractvalue %80[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %129 = llvm.getelementptr %125[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %131 = llvm.getelementptr %126[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(1 : i64) : i64
    %133 = llvm.extractvalue %80[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %134 = llvm.getelementptr %125[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %136 = llvm.getelementptr %126[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(2 : i64) : i64
    %138 = llvm.extractvalue %80[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.getelementptr %125[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %80[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.getelementptr %126[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(1 : i64) : i64
    %143 = llvm.getelementptr %84[%142] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %118, %143 : !llvm.ptr<ptr<i8>>
    %144 = llvm.call @omTensorListCreate(%84, %81, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %144 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<138 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<138 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

