module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 5] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 5] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<7> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<4> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(-9223372036854775808 : i64) : i64
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(-1 : i64) : i64
    %15 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.mlir.constant(5 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(5 : index) : i64
    %90 = llvm.mlir.constant(5 : index) : i64
    %91 = llvm.mlir.constant(5 : index) : i64
    %92 = llvm.mlir.null : !llvm.ptr<i32>
    %93 = llvm.getelementptr %92[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<i32> to i64
    %95 = llvm.mlir.constant(16 : index) : i64
    %96 = llvm.add %94, %95  : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<i32> to i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.sub %95, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.urem %102, %95  : i64
    %104 = llvm.sub %102, %103  : i64
    %105 = llvm.inttoptr %104 : i64 to !llvm.ptr<i32>
    %106 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %107 = llvm.insertvalue %98, %106[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %86, %112[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %90, %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %89, %115[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %87, %116[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %88, %117[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%119 : i64)
  ^bb1(%122: i64):  // 2 preds: ^bb0, ^bb11
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%124 : i64)
  ^bb3(%127: i64):  // 2 preds: ^bb2, ^bb10
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%129 : i64)
  ^bb5(%132: i64):  // 2 preds: ^bb4, ^bb9
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%134 : i64)
  ^bb7(%137: i64):  // 2 preds: ^bb6, ^bb8
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %139 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.add %122, %127  : i64
    %141 = llvm.add %140, %132  : i64
    %142 = llvm.add %141, %137  : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(5 : index) : i64
    %147 = llvm.mul %122, %146  : i64
    %148 = llvm.mlir.constant(5 : index) : i64
    %149 = llvm.mul %127, %148  : i64
    %150 = llvm.add %147, %149  : i64
    %151 = llvm.mlir.constant(5 : index) : i64
    %152 = llvm.mul %132, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.add %153, %137  : i64
    %155 = llvm.getelementptr %145[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %144, %155 : !llvm.ptr<i32>
    %156 = llvm.add %137, %136  : i64
    llvm.br ^bb7(%156 : i64)
  ^bb9:  // pred: ^bb7
    %157 = llvm.add %132, %131  : i64
    llvm.br ^bb5(%157 : i64)
  ^bb10:  // pred: ^bb5
    %158 = llvm.add %127, %126  : i64
    llvm.br ^bb3(%158 : i64)
  ^bb11:  // pred: ^bb3
    %159 = llvm.add %122, %121  : i64
    llvm.br ^bb1(%159 : i64)
  ^bb12:  // pred: ^bb1
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(1 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%160 : i64)
  ^bb13(%163: i64):  // 2 preds: ^bb12, ^bb23
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %165 = llvm.mlir.constant(0 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%165 : i64)
  ^bb15(%168: i64):  // 2 preds: ^bb14, ^bb22
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%170 : i64)
  ^bb17(%173: i64):  // 2 preds: ^bb16, ^bb21
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%175 : i64)
  ^bb19(%178: i64):  // 2 preds: ^bb18, ^bb20
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.add %178, %180  : i64
    %182 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %183 = llvm.add %163, %168  : i64
    %184 = llvm.add %183, %173  : i64
    %185 = llvm.add %184, %178  : i64
    %186 = llvm.getelementptr %182[%185] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %187 = llvm.load %186 : !llvm.ptr<i32>
    %188 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(5 : index) : i64
    %190 = llvm.mul %163, %189  : i64
    %191 = llvm.mlir.constant(5 : index) : i64
    %192 = llvm.mul %168, %191  : i64
    %193 = llvm.add %190, %192  : i64
    %194 = llvm.mlir.constant(5 : index) : i64
    %195 = llvm.mul %173, %194  : i64
    %196 = llvm.add %193, %195  : i64
    %197 = llvm.add %196, %181  : i64
    %198 = llvm.getelementptr %188[%197] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %187, %198 : !llvm.ptr<i32>
    %199 = llvm.add %178, %177  : i64
    llvm.br ^bb19(%199 : i64)
  ^bb21:  // pred: ^bb19
    %200 = llvm.add %173, %172  : i64
    llvm.br ^bb17(%200 : i64)
  ^bb22:  // pred: ^bb17
    %201 = llvm.add %168, %167  : i64
    llvm.br ^bb15(%201 : i64)
  ^bb23:  // pred: ^bb15
    %202 = llvm.add %163, %162  : i64
    llvm.br ^bb13(%202 : i64)
  ^bb24:  // pred: ^bb13
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%203 : i64)
  ^bb25(%206: i64):  // 2 preds: ^bb24, ^bb35
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%208 : i64)
  ^bb27(%211: i64):  // 2 preds: ^bb26, ^bb34
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%213 : i64)
  ^bb29(%216: i64):  // 2 preds: ^bb28, ^bb33
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%218 : i64)
  ^bb31(%221: i64):  // 2 preds: ^bb30, ^bb32
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.add %206, %211  : i64
    %227 = llvm.add %226, %216  : i64
    %228 = llvm.add %227, %221  : i64
    %229 = llvm.getelementptr %225[%228] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %230 = llvm.load %229 : !llvm.ptr<i32>
    %231 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.mlir.constant(5 : index) : i64
    %233 = llvm.mul %206, %232  : i64
    %234 = llvm.mlir.constant(5 : index) : i64
    %235 = llvm.mul %211, %234  : i64
    %236 = llvm.add %233, %235  : i64
    %237 = llvm.mlir.constant(5 : index) : i64
    %238 = llvm.mul %216, %237  : i64
    %239 = llvm.add %236, %238  : i64
    %240 = llvm.add %239, %224  : i64
    %241 = llvm.getelementptr %231[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %230, %241 : !llvm.ptr<i32>
    %242 = llvm.add %221, %220  : i64
    llvm.br ^bb31(%242 : i64)
  ^bb33:  // pred: ^bb31
    %243 = llvm.add %216, %215  : i64
    llvm.br ^bb29(%243 : i64)
  ^bb34:  // pred: ^bb29
    %244 = llvm.add %211, %210  : i64
    llvm.br ^bb27(%244 : i64)
  ^bb35:  // pred: ^bb27
    %245 = llvm.add %206, %205  : i64
    llvm.br ^bb25(%245 : i64)
  ^bb36:  // pred: ^bb25
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%246 : i64)
  ^bb37(%249: i64):  // 2 preds: ^bb36, ^bb47
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%251 : i64)
  ^bb39(%254: i64):  // 2 preds: ^bb38, ^bb46
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%256 : i64)
  ^bb41(%259: i64):  // 2 preds: ^bb40, ^bb45
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%261 : i64)
  ^bb43(%264: i64):  // 2 preds: ^bb42, ^bb44
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %266 = llvm.mlir.constant(3 : index) : i64
    %267 = llvm.add %264, %266  : i64
    %268 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.add %249, %254  : i64
    %270 = llvm.add %269, %259  : i64
    %271 = llvm.add %270, %264  : i64
    %272 = llvm.getelementptr %268[%271] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %273 = llvm.load %272 : !llvm.ptr<i32>
    %274 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.mlir.constant(5 : index) : i64
    %276 = llvm.mul %249, %275  : i64
    %277 = llvm.mlir.constant(5 : index) : i64
    %278 = llvm.mul %254, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.mlir.constant(5 : index) : i64
    %281 = llvm.mul %259, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %267  : i64
    %284 = llvm.getelementptr %274[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %273, %284 : !llvm.ptr<i32>
    %285 = llvm.add %264, %263  : i64
    llvm.br ^bb43(%285 : i64)
  ^bb45:  // pred: ^bb43
    %286 = llvm.add %259, %258  : i64
    llvm.br ^bb41(%286 : i64)
  ^bb46:  // pred: ^bb41
    %287 = llvm.add %254, %253  : i64
    llvm.br ^bb39(%287 : i64)
  ^bb47:  // pred: ^bb39
    %288 = llvm.add %249, %248  : i64
    llvm.br ^bb37(%288 : i64)
  ^bb48:  // pred: ^bb37
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%289 : i64)
  ^bb49(%292: i64):  // 2 preds: ^bb48, ^bb59
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%294 : i64)
  ^bb51(%297: i64):  // 2 preds: ^bb50, ^bb58
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%299 : i64)
  ^bb53(%302: i64):  // 2 preds: ^bb52, ^bb57
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%304 : i64)
  ^bb55(%307: i64):  // 2 preds: ^bb54, ^bb56
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %312 = llvm.add %292, %297  : i64
    %313 = llvm.add %312, %302  : i64
    %314 = llvm.add %313, %307  : i64
    %315 = llvm.getelementptr %311[%314] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %316 = llvm.load %315 : !llvm.ptr<i32>
    %317 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.mlir.constant(5 : index) : i64
    %319 = llvm.mul %292, %318  : i64
    %320 = llvm.mlir.constant(5 : index) : i64
    %321 = llvm.mul %297, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.mlir.constant(5 : index) : i64
    %324 = llvm.mul %302, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.add %325, %310  : i64
    %327 = llvm.getelementptr %317[%326] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %316, %327 : !llvm.ptr<i32>
    %328 = llvm.add %307, %306  : i64
    llvm.br ^bb55(%328 : i64)
  ^bb57:  // pred: ^bb55
    %329 = llvm.add %302, %301  : i64
    llvm.br ^bb53(%329 : i64)
  ^bb58:  // pred: ^bb53
    %330 = llvm.add %297, %296  : i64
    llvm.br ^bb51(%330 : i64)
  ^bb59:  // pred: ^bb51
    %331 = llvm.add %292, %291  : i64
    llvm.br ^bb49(%331 : i64)
  ^bb60:  // pred: ^bb49
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(5 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(5 : index) : i64
    %337 = llvm.mlir.constant(5 : index) : i64
    %338 = llvm.mlir.null : !llvm.ptr<i64>
    %339 = llvm.getelementptr %338[%337] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %340 = llvm.ptrtoint %339 : !llvm.ptr<i64> to i64
    %341 = llvm.mlir.constant(16 : index) : i64
    %342 = llvm.add %340, %341  : i64
    %343 = llvm.call @malloc(%342) : (i64) -> !llvm.ptr<i8>
    %344 = llvm.bitcast %343 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i64> to i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.sub %341, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.urem %348, %341  : i64
    %350 = llvm.sub %348, %349  : i64
    %351 = llvm.inttoptr %350 : i64 to !llvm.ptr<i64>
    %352 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %353 = llvm.insertvalue %344, %352[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %354 = llvm.insertvalue %351, %353[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.insertvalue %355, %354[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %357 = llvm.insertvalue %332, %356[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %358 = llvm.insertvalue %333, %357[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %359 = llvm.insertvalue %334, %358[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %360 = llvm.insertvalue %336, %359[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %361 = llvm.insertvalue %334, %360[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %362 = llvm.insertvalue %335, %361[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%363 : i64)
  ^bb61(%366: i64):  // 2 preds: ^bb60, ^bb68
    %367 = llvm.icmp "slt" %366, %364 : i64
    llvm.cond_br %367, ^bb62, ^bb69
  ^bb62:  // pred: ^bb61
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    %370 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%368 : i64)
  ^bb63(%371: i64):  // 2 preds: ^bb62, ^bb67
    %372 = llvm.icmp "slt" %371, %369 : i64
    llvm.cond_br %372, ^bb64, ^bb68
  ^bb64:  // pred: ^bb63
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.mlir.constant(5 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%373 : i64)
  ^bb65(%376: i64):  // 2 preds: ^bb64, ^bb66
    %377 = llvm.icmp "slt" %376, %374 : i64
    llvm.cond_br %377, ^bb66, ^bb67
  ^bb66:  // pred: ^bb65
    %378 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %379 = llvm.mlir.constant(5 : index) : i64
    %380 = llvm.mul %366, %379  : i64
    %381 = llvm.mlir.constant(5 : index) : i64
    %382 = llvm.mul %371, %381  : i64
    %383 = llvm.add %380, %382  : i64
    %384 = llvm.add %383, %376  : i64
    %385 = llvm.getelementptr %378[%384] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %385 : !llvm.ptr<i64>
    %386 = llvm.add %376, %375  : i64
    llvm.br ^bb65(%386 : i64)
  ^bb67:  // pred: ^bb65
    %387 = llvm.add %371, %370  : i64
    llvm.br ^bb63(%387 : i64)
  ^bb68:  // pred: ^bb63
    %388 = llvm.add %366, %365  : i64
    llvm.br ^bb61(%388 : i64)
  ^bb69:  // pred: ^bb61
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%389 : i64)
  ^bb70(%392: i64):  // 2 preds: ^bb69, ^bb80
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%394 : i64)
  ^bb72(%397: i64):  // 2 preds: ^bb71, ^bb79
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%399 : i64)
  ^bb74(%402: i64):  // 2 preds: ^bb73, ^bb78
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(5 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%404 : i64)
  ^bb76(%407: i64):  // 2 preds: ^bb75, ^bb77
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %409 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.mlir.constant(5 : index) : i64
    %411 = llvm.mul %392, %410  : i64
    %412 = llvm.mlir.constant(5 : index) : i64
    %413 = llvm.mul %397, %412  : i64
    %414 = llvm.add %411, %413  : i64
    %415 = llvm.mlir.constant(5 : index) : i64
    %416 = llvm.mul %402, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.add %417, %407  : i64
    %419 = llvm.getelementptr %409[%418] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %420 = llvm.load %419 : !llvm.ptr<i32>
    %421 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %422 = llvm.mlir.constant(5 : index) : i64
    %423 = llvm.mul %392, %422  : i64
    %424 = llvm.mlir.constant(5 : index) : i64
    %425 = llvm.mul %402, %424  : i64
    %426 = llvm.add %423, %425  : i64
    %427 = llvm.add %426, %407  : i64
    %428 = llvm.getelementptr %421[%427] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %429 = llvm.load %428 : !llvm.ptr<i64>
    %430 = llvm.icmp "slt" %429, %13 : i64
    %431 = llvm.select %430, %13, %429 : i1, i64
    %432 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.mlir.constant(5 : index) : i64
    %434 = llvm.mul %392, %433  : i64
    %435 = llvm.mlir.constant(5 : index) : i64
    %436 = llvm.mul %431, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.mlir.constant(5 : index) : i64
    %439 = llvm.mul %402, %438  : i64
    %440 = llvm.add %437, %439  : i64
    %441 = llvm.add %440, %407  : i64
    %442 = llvm.getelementptr %432[%441] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %443 = llvm.load %442 : !llvm.ptr<i32>
    %444 = llvm.icmp "sgt" %420, %443 : i32
    %445 = llvm.select %444, %397, %431 : i1, i64
    %446 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %447 = llvm.mlir.constant(5 : index) : i64
    %448 = llvm.mul %392, %447  : i64
    %449 = llvm.mlir.constant(5 : index) : i64
    %450 = llvm.mul %402, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.add %451, %407  : i64
    %453 = llvm.getelementptr %446[%452] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %445, %453 : !llvm.ptr<i64>
    %454 = llvm.add %407, %406  : i64
    llvm.br ^bb76(%454 : i64)
  ^bb78:  // pred: ^bb76
    %455 = llvm.add %402, %401  : i64
    llvm.br ^bb74(%455 : i64)
  ^bb79:  // pred: ^bb74
    %456 = llvm.add %397, %396  : i64
    llvm.br ^bb72(%456 : i64)
  ^bb80:  // pred: ^bb72
    %457 = llvm.add %392, %391  : i64
    llvm.br ^bb70(%457 : i64)
  ^bb81:  // pred: ^bb70
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.null : !llvm.ptr<i64>
    %462 = llvm.getelementptr %461[%458] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %463 = llvm.ptrtoint %462 : !llvm.ptr<i64> to i64
    %464 = llvm.mlir.constant(16 : index) : i64
    %465 = llvm.add %463, %464  : i64
    %466 = llvm.call @malloc(%465) : (i64) -> !llvm.ptr<i8>
    %467 = llvm.bitcast %466 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %468 = llvm.ptrtoint %467 : !llvm.ptr<i64> to i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.sub %464, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.urem %471, %464  : i64
    %473 = llvm.sub %471, %472  : i64
    %474 = llvm.inttoptr %473 : i64 to !llvm.ptr<i64>
    %475 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %476 = llvm.insertvalue %467, %475[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %477 = llvm.insertvalue %474, %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.insertvalue %478, %477[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %480 = llvm.insertvalue %458, %479[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %481 = llvm.insertvalue %459, %480[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %482 = llvm.insertvalue %459, %481[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %483 = llvm.insertvalue %460, %482[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %484 = llvm.mlir.constant(0 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%484 : i64)
  ^bb82(%487: i64):  // 2 preds: ^bb81, ^bb86
    %488 = llvm.icmp "slt" %487, %485 : i64
    llvm.cond_br %488, ^bb83, ^bb87
  ^bb83:  // pred: ^bb82
    %489 = llvm.mlir.constant(0 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%489 : i64)
  ^bb84(%492: i64):  // 2 preds: ^bb83, ^bb85
    %493 = llvm.icmp "slt" %492, %490 : i64
    llvm.cond_br %493, ^bb85, ^bb86
  ^bb85:  // pred: ^bb84
    %494 = llvm.extractvalue %483[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %495 = llvm.add %487, %492  : i64
    %496 = llvm.getelementptr %494[%495] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %496 : !llvm.ptr<i64>
    %497 = llvm.add %492, %491  : i64
    llvm.br ^bb84(%497 : i64)
  ^bb86:  // pred: ^bb84
    %498 = llvm.add %487, %486  : i64
    llvm.br ^bb82(%498 : i64)
  ^bb87:  // pred: ^bb82
    %499 = llvm.mlir.constant(0 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%499 : i64)
  ^bb88(%502: i64):  // 2 preds: ^bb87, ^bb95
    %503 = llvm.icmp "slt" %502, %500 : i64
    llvm.cond_br %503, ^bb89, ^bb96
  ^bb89:  // pred: ^bb88
    %504 = llvm.mlir.constant(0 : index) : i64
    %505 = llvm.mlir.constant(1 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%504 : i64)
  ^bb90(%507: i64):  // 2 preds: ^bb89, ^bb94
    %508 = llvm.icmp "slt" %507, %505 : i64
    llvm.cond_br %508, ^bb91, ^bb95
  ^bb91:  // pred: ^bb90
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(5 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%509 : i64)
  ^bb92(%512: i64):  // 2 preds: ^bb91, ^bb93
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb93, ^bb94
  ^bb93:  // pred: ^bb92
    %514 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.mlir.constant(5 : index) : i64
    %516 = llvm.mul %502, %515  : i64
    %517 = llvm.mlir.constant(5 : index) : i64
    %518 = llvm.mul %507, %517  : i64
    %519 = llvm.add %516, %518  : i64
    %520 = llvm.add %519, %512  : i64
    %521 = llvm.getelementptr %514[%520] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %522 = llvm.load %521 : !llvm.ptr<i64>
    %523 = llvm.extractvalue %483[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %524 = llvm.add %502, %507  : i64
    %525 = llvm.getelementptr %523[%524] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %526 = llvm.load %525 : !llvm.ptr<i64>
    %527 = llvm.icmp "sgt" %526, %522 : i64
    %528 = llvm.select %527, %526, %522 : i1, i64
    %529 = llvm.extractvalue %483[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %530 = llvm.add %502, %507  : i64
    %531 = llvm.getelementptr %529[%530] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %528, %531 : !llvm.ptr<i64>
    %532 = llvm.add %512, %511  : i64
    llvm.br ^bb92(%532 : i64)
  ^bb94:  // pred: ^bb92
    %533 = llvm.add %507, %506  : i64
    llvm.br ^bb90(%533 : i64)
  ^bb95:  // pred: ^bb90
    %534 = llvm.add %502, %501  : i64
    llvm.br ^bb88(%534 : i64)
  ^bb96:  // pred: ^bb88
    %535 = llvm.mlir.constant(1 : index) : i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.mlir.constant(5 : index) : i64
    %538 = llvm.mlir.constant(1 : index) : i64
    %539 = llvm.mlir.constant(5 : index) : i64
    %540 = llvm.mlir.constant(5 : index) : i64
    %541 = llvm.mlir.null : !llvm.ptr<i1>
    %542 = llvm.getelementptr %541[%540] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %543 = llvm.ptrtoint %542 : !llvm.ptr<i1> to i64
    %544 = llvm.mlir.constant(16 : index) : i64
    %545 = llvm.add %543, %544  : i64
    %546 = llvm.call @malloc(%545) : (i64) -> !llvm.ptr<i8>
    %547 = llvm.bitcast %546 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %548 = llvm.ptrtoint %547 : !llvm.ptr<i1> to i64
    %549 = llvm.mlir.constant(1 : index) : i64
    %550 = llvm.sub %544, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.urem %551, %544  : i64
    %553 = llvm.sub %551, %552  : i64
    %554 = llvm.inttoptr %553 : i64 to !llvm.ptr<i1>
    %555 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %556 = llvm.insertvalue %547, %555[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %557 = llvm.insertvalue %554, %556[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %558 = llvm.mlir.constant(0 : index) : i64
    %559 = llvm.insertvalue %558, %557[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %560 = llvm.insertvalue %535, %559[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %561 = llvm.insertvalue %536, %560[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %562 = llvm.insertvalue %537, %561[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %563 = llvm.insertvalue %539, %562[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %564 = llvm.insertvalue %537, %563[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %565 = llvm.insertvalue %538, %564[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %566 = llvm.mlir.constant(0 : index) : i64
    %567 = llvm.mlir.constant(1 : index) : i64
    %568 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%566 : i64)
  ^bb97(%569: i64):  // 2 preds: ^bb96, ^bb104
    %570 = llvm.icmp "slt" %569, %567 : i64
    llvm.cond_br %570, ^bb98, ^bb105
  ^bb98:  // pred: ^bb97
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb99(%571 : i64)
  ^bb99(%574: i64):  // 2 preds: ^bb98, ^bb103
    %575 = llvm.icmp "slt" %574, %572 : i64
    llvm.cond_br %575, ^bb100, ^bb104
  ^bb100:  // pred: ^bb99
    %576 = llvm.mlir.constant(0 : index) : i64
    %577 = llvm.mlir.constant(5 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb101(%576 : i64)
  ^bb101(%579: i64):  // 2 preds: ^bb100, ^bb102
    %580 = llvm.icmp "slt" %579, %577 : i64
    llvm.cond_br %580, ^bb102, ^bb103
  ^bb102:  // pred: ^bb101
    %581 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %582 = llvm.mlir.constant(5 : index) : i64
    %583 = llvm.mul %569, %582  : i64
    %584 = llvm.mlir.constant(5 : index) : i64
    %585 = llvm.mul %574, %584  : i64
    %586 = llvm.add %583, %585  : i64
    %587 = llvm.add %586, %579  : i64
    %588 = llvm.getelementptr %581[%587] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %589 = llvm.load %588 : !llvm.ptr<i64>
    %590 = llvm.extractvalue %362[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %591 = llvm.mlir.constant(5 : index) : i64
    %592 = llvm.mul %569, %591  : i64
    %593 = llvm.mlir.constant(5 : index) : i64
    %594 = llvm.mul %574, %593  : i64
    %595 = llvm.add %592, %594  : i64
    %596 = llvm.add %595, %579  : i64
    %597 = llvm.getelementptr %590[%596] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %598 = llvm.load %597 : !llvm.ptr<i64>
    %599 = llvm.icmp "eq" %589, %598 : i64
    %600 = llvm.extractvalue %565[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %601 = llvm.mlir.constant(5 : index) : i64
    %602 = llvm.mul %569, %601  : i64
    %603 = llvm.mlir.constant(5 : index) : i64
    %604 = llvm.mul %574, %603  : i64
    %605 = llvm.add %602, %604  : i64
    %606 = llvm.add %605, %579  : i64
    %607 = llvm.getelementptr %600[%606] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %599, %607 : !llvm.ptr<i1>
    %608 = llvm.add %579, %578  : i64
    llvm.br ^bb101(%608 : i64)
  ^bb103:  // pred: ^bb101
    %609 = llvm.add %574, %573  : i64
    llvm.br ^bb99(%609 : i64)
  ^bb104:  // pred: ^bb99
    %610 = llvm.add %569, %568  : i64
    llvm.br ^bb97(%610 : i64)
  ^bb105:  // pred: ^bb97
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(5 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.mlir.constant(5 : index) : i64
    %617 = llvm.mlir.constant(5 : index) : i64
    %618 = llvm.mlir.constant(5 : index) : i64
    %619 = llvm.mlir.null : !llvm.ptr<i1>
    %620 = llvm.getelementptr %619[%618] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %621 = llvm.ptrtoint %620 : !llvm.ptr<i1> to i64
    %622 = llvm.mlir.constant(16 : index) : i64
    %623 = llvm.add %621, %622  : i64
    %624 = llvm.call @malloc(%623) : (i64) -> !llvm.ptr<i8>
    %625 = llvm.bitcast %624 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %626 = llvm.ptrtoint %625 : !llvm.ptr<i1> to i64
    %627 = llvm.mlir.constant(1 : index) : i64
    %628 = llvm.sub %622, %627  : i64
    %629 = llvm.add %626, %628  : i64
    %630 = llvm.urem %629, %622  : i64
    %631 = llvm.sub %629, %630  : i64
    %632 = llvm.inttoptr %631 : i64 to !llvm.ptr<i1>
    %633 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %634 = llvm.insertvalue %625, %633[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.insertvalue %632, %634[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.insertvalue %636, %635[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.insertvalue %611, %637[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %639 = llvm.insertvalue %612, %638[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.insertvalue %613, %639[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.insertvalue %614, %640[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %642 = llvm.insertvalue %617, %641[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.insertvalue %616, %642[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %644 = llvm.insertvalue %614, %643[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %645 = llvm.insertvalue %615, %644[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb106(%646 : i64)
  ^bb106(%649: i64):  // 2 preds: ^bb105, ^bb116
    %650 = llvm.icmp "slt" %649, %647 : i64
    llvm.cond_br %650, ^bb107, ^bb117
  ^bb107:  // pred: ^bb106
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb108(%651 : i64)
  ^bb108(%654: i64):  // 2 preds: ^bb107, ^bb115
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb109, ^bb116
  ^bb109:  // pred: ^bb108
    %656 = llvm.mlir.constant(0 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb110(%656 : i64)
  ^bb110(%659: i64):  // 2 preds: ^bb109, ^bb114
    %660 = llvm.icmp "slt" %659, %657 : i64
    llvm.cond_br %660, ^bb111, ^bb115
  ^bb111:  // pred: ^bb110
    %661 = llvm.mlir.constant(0 : index) : i64
    %662 = llvm.mlir.constant(5 : index) : i64
    %663 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb112(%661 : i64)
  ^bb112(%664: i64):  // 2 preds: ^bb111, ^bb113
    %665 = llvm.icmp "slt" %664, %662 : i64
    llvm.cond_br %665, ^bb113, ^bb114
  ^bb113:  // pred: ^bb112
    %666 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %667 = llvm.mlir.constant(5 : index) : i64
    %668 = llvm.mul %649, %667  : i64
    %669 = llvm.mlir.constant(5 : index) : i64
    %670 = llvm.mul %654, %669  : i64
    %671 = llvm.add %668, %670  : i64
    %672 = llvm.mlir.constant(5 : index) : i64
    %673 = llvm.mul %659, %672  : i64
    %674 = llvm.add %671, %673  : i64
    %675 = llvm.add %674, %664  : i64
    %676 = llvm.getelementptr %666[%675] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %677 = llvm.load %676 : !llvm.ptr<i32>
    %678 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.mlir.constant(5 : index) : i64
    %680 = llvm.mul %649, %679  : i64
    %681 = llvm.mlir.constant(5 : index) : i64
    %682 = llvm.mul %654, %681  : i64
    %683 = llvm.add %680, %682  : i64
    %684 = llvm.mlir.constant(5 : index) : i64
    %685 = llvm.mul %659, %684  : i64
    %686 = llvm.add %683, %685  : i64
    %687 = llvm.add %686, %664  : i64
    %688 = llvm.getelementptr %678[%687] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %689 = llvm.load %688 : !llvm.ptr<i32>
    %690 = llvm.icmp "slt" %677, %689 : i32
    %691 = llvm.extractvalue %645[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %692 = llvm.mlir.constant(5 : index) : i64
    %693 = llvm.mul %649, %692  : i64
    %694 = llvm.mlir.constant(5 : index) : i64
    %695 = llvm.mul %654, %694  : i64
    %696 = llvm.add %693, %695  : i64
    %697 = llvm.mlir.constant(5 : index) : i64
    %698 = llvm.mul %659, %697  : i64
    %699 = llvm.add %696, %698  : i64
    %700 = llvm.add %699, %664  : i64
    %701 = llvm.getelementptr %691[%700] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %690, %701 : !llvm.ptr<i1>
    %702 = llvm.add %664, %663  : i64
    llvm.br ^bb112(%702 : i64)
  ^bb114:  // pred: ^bb112
    %703 = llvm.add %659, %658  : i64
    llvm.br ^bb110(%703 : i64)
  ^bb115:  // pred: ^bb110
    %704 = llvm.add %654, %653  : i64
    llvm.br ^bb108(%704 : i64)
  ^bb116:  // pred: ^bb108
    %705 = llvm.add %649, %648  : i64
    llvm.br ^bb106(%705 : i64)
  ^bb117:  // pred: ^bb106
    %706 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %707 = llvm.insertvalue %483, %706[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %708 = llvm.insertvalue %565, %707[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %709 = llvm.insertvalue %645, %708[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %709 : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(2 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.getelementptr %51[%72] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %73 : !llvm.ptr<ptr<i8>>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.call @omTensorCreateUntyped(%74) : (i64) -> !llvm.ptr<i8>
    %76 = llvm.mlir.constant(1 : i64) : i64
    %77 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.bitcast %77 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %79 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.bitcast %79 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%75, %76, %78, %80) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %81 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%75, %81) : (!llvm.ptr<i8>, i64) -> ()
    %82 = llvm.call @omTensorGetShape(%75) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %83 = llvm.call @omTensorGetStrides(%75) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %84 = llvm.mlir.constant(0 : i64) : i64
    %85 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %86 = llvm.getelementptr %82[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %88 = llvm.getelementptr %83[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.mlir.constant(1 : i64) : i64
    %90 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.getelementptr %82[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %93 = llvm.getelementptr %83[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(2 : i64) : i64
    %95 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %96 = llvm.getelementptr %82[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %98 = llvm.getelementptr %83[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.getelementptr %51[%99] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %75, %100 : !llvm.ptr<ptr<i8>>
    %101 = llvm.mlir.constant(4 : i64) : i64
    %102 = llvm.call @omTensorCreateUntyped(%101) : (i64) -> !llvm.ptr<i8>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.bitcast %104 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %106 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%102, %103, %105, %107) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %108 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%102, %108) : (!llvm.ptr<i8>, i64) -> ()
    %109 = llvm.call @omTensorGetShape(%102) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %110 = llvm.call @omTensorGetStrides(%102) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %111 = llvm.mlir.constant(0 : i64) : i64
    %112 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %109[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %110[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.mlir.constant(1 : i64) : i64
    %117 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %109[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %110[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(2 : i64) : i64
    %122 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %109[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %110[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(3 : i64) : i64
    %127 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %109[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %110[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.getelementptr %51[%131] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %102, %132 : !llvm.ptr<ptr<i8>>
    %133 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %133 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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

