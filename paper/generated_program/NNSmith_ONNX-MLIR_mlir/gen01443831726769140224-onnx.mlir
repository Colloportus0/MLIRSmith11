module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[[[3, 4]]]> : tensor<1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x i32>>>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.mlir.global internal constant @constant_0(dense<5> : tensor<1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x i32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i1>, %arg6: !llvm.ptr<i1>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(1 : i64) : i64
    %19 = llvm.mlir.constant(0 : i32) : i32
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x i32>>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<1 x array<1 x i32>>> to !llvm.ptr<i32>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %36 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<2 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(2 : index) : i64
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
    %54 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x i64>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(2 : index) : i64
    %62 = llvm.insertvalue %61, %60[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.insertvalue %63, %62[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<2 x i32>>>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<1 x array<1 x array<2 x i32>>>> to !llvm.ptr<i32>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.null : !llvm.ptr<i32>
    %91 = llvm.getelementptr %90[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i32> to i64
    %93 = llvm.mlir.constant(16 : index) : i64
    %94 = llvm.add %92, %93  : i64
    %95 = llvm.call @malloc(%94) : (i64) -> !llvm.ptr<i8>
    %96 = llvm.bitcast %95 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %97 = llvm.ptrtoint %96 : !llvm.ptr<i32> to i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.sub %93, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.urem %100, %93  : i64
    %102 = llvm.sub %100, %101  : i64
    %103 = llvm.inttoptr %102 : i64 to !llvm.ptr<i32>
    %104 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %105 = llvm.insertvalue %96, %104[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %106 = llvm.insertvalue %103, %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.insertvalue %107, %106[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.insertvalue %84, %108[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %110 = llvm.insertvalue %85, %109[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %111 = llvm.insertvalue %86, %110[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %112 = llvm.insertvalue %88, %111[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %113 = llvm.insertvalue %86, %112[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %114 = llvm.insertvalue %87, %113[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.mlir.constant(0 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%115 : i64)
  ^bb1(%118: i64):  // 2 preds: ^bb0, ^bb8
    %119 = llvm.icmp "slt" %118, %116 : i64
    llvm.cond_br %119, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %120 = llvm.mlir.constant(0 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%120 : i64)
  ^bb3(%123: i64):  // 2 preds: ^bb2, ^bb7
    %124 = llvm.icmp "slt" %123, %121 : i64
    llvm.cond_br %124, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.mlir.constant(2 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%125 : i64)
  ^bb5(%128: i64):  // 2 preds: ^bb4, ^bb6
    %129 = llvm.icmp "slt" %128, %126 : i64
    llvm.cond_br %129, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %130 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.add %123, %20  : i64
    %132 = llvm.getelementptr %130[%131] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mul %118, %135  : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mul %123, %137  : i64
    %139 = llvm.add %136, %138  : i64
    %140 = llvm.add %139, %128  : i64
    %141 = llvm.getelementptr %134[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %142 = llvm.load %141 : !llvm.ptr<i32>
    %143 = llvm.icmp "sgt" %133, %142 : i32
    %144 = llvm.select %143, %133, %142 : i1, i32
    %145 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %118, %146  : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mul %123, %148  : i64
    %150 = llvm.add %147, %149  : i64
    %151 = llvm.add %150, %128  : i64
    %152 = llvm.getelementptr %145[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %144, %152 : !llvm.ptr<i32>
    %153 = llvm.add %128, %127  : i64
    llvm.br ^bb5(%153 : i64)
  ^bb7:  // pred: ^bb5
    %154 = llvm.add %123, %122  : i64
    llvm.br ^bb3(%154 : i64)
  ^bb8:  // pred: ^bb3
    %155 = llvm.add %118, %117  : i64
    llvm.br ^bb1(%155 : i64)
  ^bb9:  // pred: ^bb1
    %156 = llvm.mlir.constant(1 : index) : i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.null : !llvm.ptr<i32>
    %160 = llvm.getelementptr %159[%156] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %161 = llvm.ptrtoint %160 : !llvm.ptr<i32> to i64
    %162 = llvm.mlir.constant(16 : index) : i64
    %163 = llvm.add %161, %162  : i64
    %164 = llvm.call @malloc(%163) : (i64) -> !llvm.ptr<i8>
    %165 = llvm.bitcast %164 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %166 = llvm.ptrtoint %165 : !llvm.ptr<i32> to i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.sub %162, %167  : i64
    %169 = llvm.add %166, %168  : i64
    %170 = llvm.urem %169, %162  : i64
    %171 = llvm.sub %169, %170  : i64
    %172 = llvm.inttoptr %171 : i64 to !llvm.ptr<i32>
    %173 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %174 = llvm.insertvalue %165, %173[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %175 = llvm.insertvalue %172, %174[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.insertvalue %176, %175[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %178 = llvm.insertvalue %156, %177[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %179 = llvm.insertvalue %157, %178[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.insertvalue %157, %179[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.insertvalue %158, %180[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.mlir.null : !llvm.ptr<i32>
    %184 = llvm.getelementptr %183[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<i32> to i64
    %186 = llvm.alloca %185 x i32 : (i64) -> !llvm.ptr<i32>
    %187 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %188 = llvm.insertvalue %186, %187[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%192 : i64)
  ^bb10(%195: i64):  // 2 preds: ^bb9, ^bb17
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%197 : i64)
  ^bb12(%200: i64):  // 2 preds: ^bb11, ^bb16
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %202 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %19, %202 : !llvm.ptr<i32>
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%203 : i64)
  ^bb14(%206: i64):  // 2 preds: ^bb13, ^bb15
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %208 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mul %195, %209  : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mul %200, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.add %213, %206  : i64
    %215 = llvm.getelementptr %208[%214] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %216 = llvm.load %215 : !llvm.ptr<i32>
    %217 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %218 = llvm.getelementptr %217[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %219 = llvm.load %218 : !llvm.ptr<i32>
    %220 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %221 = llvm.load %220 : !llvm.ptr<i32>
    %222 = llvm.mul %216, %219  : i32
    %223 = llvm.add %221, %222  : i32
    %224 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %223, %224 : !llvm.ptr<i32>
    %225 = llvm.add %206, %205  : i64
    llvm.br ^bb14(%225 : i64)
  ^bb16:  // pred: ^bb14
    %226 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %227 = llvm.load %226 : !llvm.ptr<i32>
    %228 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %229 = llvm.add %195, %200  : i64
    %230 = llvm.getelementptr %228[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %227, %230 : !llvm.ptr<i32>
    %231 = llvm.add %200, %199  : i64
    llvm.br ^bb12(%231 : i64)
  ^bb17:  // pred: ^bb12
    %232 = llvm.add %195, %194  : i64
    llvm.br ^bb10(%232 : i64)
  ^bb18:  // pred: ^bb10
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.null : !llvm.ptr<i64>
    %236 = llvm.getelementptr %235[%233] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i64> to i64
    %238 = llvm.mlir.constant(16 : index) : i64
    %239 = llvm.add %237, %238  : i64
    %240 = llvm.call @malloc(%239) : (i64) -> !llvm.ptr<i8>
    %241 = llvm.bitcast %240 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<i64> to i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.sub %238, %243  : i64
    %245 = llvm.add %242, %244  : i64
    %246 = llvm.urem %245, %238  : i64
    %247 = llvm.sub %245, %246  : i64
    %248 = llvm.inttoptr %247 : i64 to !llvm.ptr<i64>
    %249 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %250 = llvm.insertvalue %241, %249[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.insertvalue %248, %250[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.insertvalue %252, %251[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.insertvalue %233, %253[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %255 = llvm.insertvalue %234, %254[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%256 : i64)
  ^bb19(%259: i64):  // 2 preds: ^bb18, ^bb20
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %261 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.getelementptr %261[%259] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %18, %262 : !llvm.ptr<i64>
    %263 = llvm.add %259, %258  : i64
    llvm.br ^bb19(%263 : i64)
  ^bb21:  // pred: ^bb19
    %264 = llvm.mlir.constant(2 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mlir.null : !llvm.ptr<i64>
    %267 = llvm.getelementptr %266[%264] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i64> to i64
    %269 = llvm.mlir.constant(16 : index) : i64
    %270 = llvm.add %268, %269  : i64
    %271 = llvm.call @malloc(%270) : (i64) -> !llvm.ptr<i8>
    %272 = llvm.bitcast %271 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i64> to i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.sub %269, %274  : i64
    %276 = llvm.add %273, %275  : i64
    %277 = llvm.urem %276, %269  : i64
    %278 = llvm.sub %276, %277  : i64
    %279 = llvm.inttoptr %278 : i64 to !llvm.ptr<i64>
    %280 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %281 = llvm.insertvalue %272, %280[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %282 = llvm.insertvalue %279, %281[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.insertvalue %283, %282[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.insertvalue %264, %284[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %286 = llvm.insertvalue %265, %285[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%287 : i64)
  ^bb22(%290: i64):  // 2 preds: ^bb21, ^bb23
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %292 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.getelementptr %292[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %294 = llvm.load %293 : !llvm.ptr<i64>
    %295 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %296 = llvm.load %295 : !llvm.ptr<i64>
    %297 = llvm.mul %294, %296  : i64
    %298 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.getelementptr %298[%290] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %297, %299 : !llvm.ptr<i64>
    %300 = llvm.add %290, %289  : i64
    llvm.br ^bb22(%300 : i64)
  ^bb24:  // pred: ^bb22
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.null : !llvm.ptr<i1>
    %304 = llvm.getelementptr %303[%301] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i1> to i64
    %306 = llvm.mlir.constant(16 : index) : i64
    %307 = llvm.add %305, %306  : i64
    %308 = llvm.call @malloc(%307) : (i64) -> !llvm.ptr<i8>
    %309 = llvm.bitcast %308 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %310 = llvm.ptrtoint %309 : !llvm.ptr<i1> to i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.sub %306, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.urem %313, %306  : i64
    %315 = llvm.sub %313, %314  : i64
    %316 = llvm.inttoptr %315 : i64 to !llvm.ptr<i1>
    %317 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %318 = llvm.insertvalue %309, %317[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %319 = llvm.insertvalue %316, %318[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.insertvalue %320, %319[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.insertvalue %301, %321[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %323 = llvm.insertvalue %302, %322[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%324 : i64)
  ^bb25(%327: i64):  // 2 preds: ^bb24, ^bb26
    %328 = llvm.icmp "slt" %327, %325 : i64
    llvm.cond_br %328, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %329 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %330 = llvm.getelementptr %329[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %331 = llvm.load %330 : !llvm.ptr<i64>
    %332 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %333 = llvm.getelementptr %332[%327] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %334 = llvm.load %333 : !llvm.ptr<i64>
    %335 = llvm.icmp "eq" %331, %334 : i64
    %336 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.getelementptr %336[%327] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %335, %337 : !llvm.ptr<i1>
    %338 = llvm.add %327, %326  : i64
    llvm.br ^bb25(%338 : i64)
  ^bb27:  // pred: ^bb25
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.mlir.null : !llvm.ptr<i64>
    %342 = llvm.getelementptr %341[%339] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %343 = llvm.ptrtoint %342 : !llvm.ptr<i64> to i64
    %344 = llvm.mlir.constant(16 : index) : i64
    %345 = llvm.add %343, %344  : i64
    %346 = llvm.call @malloc(%345) : (i64) -> !llvm.ptr<i8>
    %347 = llvm.bitcast %346 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %348 = llvm.ptrtoint %347 : !llvm.ptr<i64> to i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.sub %344, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.urem %351, %344  : i64
    %353 = llvm.sub %351, %352  : i64
    %354 = llvm.inttoptr %353 : i64 to !llvm.ptr<i64>
    %355 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %356 = llvm.insertvalue %347, %355[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %357 = llvm.insertvalue %354, %356[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.insertvalue %358, %357[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.insertvalue %339, %359[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.insertvalue %340, %360[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%362 : i64)
  ^bb28(%365: i64):  // 2 preds: ^bb27, ^bb29
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %367 = llvm.extractvalue %323[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %368 = llvm.getelementptr %367[%365] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %369 = llvm.load %368 : !llvm.ptr<i1>
    %370 = llvm.extractvalue %255[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %371 = llvm.getelementptr %370[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %372 = llvm.load %371 : !llvm.ptr<i64>
    %373 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.getelementptr %373[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %375 = llvm.load %374 : !llvm.ptr<i64>
    %376 = llvm.select %369, %372, %375 : i1, i64
    %377 = llvm.extractvalue %361[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.getelementptr %377[%365] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %376, %378 : !llvm.ptr<i64>
    %379 = llvm.add %365, %364  : i64
    llvm.br ^bb28(%379 : i64)
  ^bb30:  // pred: ^bb28
    %380 = llvm.mlir.constant(1 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.null : !llvm.ptr<i32>
    %384 = llvm.getelementptr %383[%380] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i32> to i64
    %386 = llvm.mlir.constant(16 : index) : i64
    %387 = llvm.add %385, %386  : i64
    %388 = llvm.call @malloc(%387) : (i64) -> !llvm.ptr<i8>
    %389 = llvm.bitcast %388 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %390 = llvm.ptrtoint %389 : !llvm.ptr<i32> to i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.sub %386, %391  : i64
    %393 = llvm.add %390, %392  : i64
    %394 = llvm.urem %393, %386  : i64
    %395 = llvm.sub %393, %394  : i64
    %396 = llvm.inttoptr %395 : i64 to !llvm.ptr<i32>
    %397 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %398 = llvm.insertvalue %389, %397[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %399 = llvm.insertvalue %396, %398[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.insertvalue %400, %399[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %402 = llvm.insertvalue %380, %401[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %403 = llvm.insertvalue %381, %402[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %404 = llvm.insertvalue %381, %403[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %405 = llvm.insertvalue %382, %404[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %406 = llvm.mlir.constant(0 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    %408 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%406 : i64)
  ^bb31(%409: i64):  // 2 preds: ^bb30, ^bb35
    %410 = llvm.icmp "slt" %409, %407 : i64
    llvm.cond_br %410, ^bb32, ^bb36
  ^bb32:  // pred: ^bb31
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%411 : i64)
  ^bb33(%414: i64):  // 2 preds: ^bb32, ^bb34
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %416 = llvm.extractvalue %181[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %417 = llvm.add %20, %20  : i64
    %418 = llvm.getelementptr %416[%417] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %419 = llvm.load %418 : !llvm.ptr<i32>
    %420 = llvm.extractvalue %405[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %421 = llvm.add %409, %414  : i64
    %422 = llvm.getelementptr %420[%421] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %419, %422 : !llvm.ptr<i32>
    %423 = llvm.add %414, %413  : i64
    llvm.br ^bb33(%423 : i64)
  ^bb35:  // pred: ^bb33
    %424 = llvm.add %409, %408  : i64
    llvm.br ^bb31(%424 : i64)
  ^bb36:  // pred: ^bb31
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mlir.constant(4 : index) : i64
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.mlir.null : !llvm.ptr<i32>
    %434 = llvm.getelementptr %433[%432] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %435 = llvm.ptrtoint %434 : !llvm.ptr<i32> to i64
    %436 = llvm.mlir.constant(16 : index) : i64
    %437 = llvm.add %435, %436  : i64
    %438 = llvm.call @malloc(%437) : (i64) -> !llvm.ptr<i8>
    %439 = llvm.bitcast %438 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %440 = llvm.ptrtoint %439 : !llvm.ptr<i32> to i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.sub %436, %441  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.urem %443, %436  : i64
    %445 = llvm.sub %443, %444  : i64
    %446 = llvm.inttoptr %445 : i64 to !llvm.ptr<i32>
    %447 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %448 = llvm.insertvalue %439, %447[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %446, %448[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.insertvalue %450, %449[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %425, %451[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %426, %452[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %427, %453[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %428, %454[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %431, %455[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %430, %456[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.insertvalue %428, %457[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.insertvalue %429, %458[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%460 : i64)
  ^bb37(%463: i64):  // 2 preds: ^bb36, ^bb47
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%465 : i64)
  ^bb39(%468: i64):  // 2 preds: ^bb38, ^bb46
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%470 : i64)
  ^bb41(%473: i64):  // 2 preds: ^bb40, ^bb45
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%475 : i64)
  ^bb43(%478: i64):  // 2 preds: ^bb42, ^bb44
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %480 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mul %463, %481  : i64
    %483 = llvm.add %482, %468  : i64
    %484 = llvm.add %483, %473  : i64
    %485 = llvm.add %484, %20  : i64
    %486 = llvm.getelementptr %480[%485] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %487 = llvm.load %486 : !llvm.ptr<i1>
    %488 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.getelementptr %488[%478] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %490 = llvm.load %489 : !llvm.ptr<i32>
    %491 = llvm.extractvalue %114[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mul %20, %492  : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mul %473, %494  : i64
    %496 = llvm.add %493, %495  : i64
    %497 = llvm.add %496, %478  : i64
    %498 = llvm.getelementptr %491[%497] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %499 = llvm.load %498 : !llvm.ptr<i32>
    %500 = llvm.select %487, %490, %499 : i1, i32
    %501 = llvm.extractvalue %459[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.mlir.constant(4 : index) : i64
    %503 = llvm.mul %463, %502  : i64
    %504 = llvm.mlir.constant(2 : index) : i64
    %505 = llvm.mul %468, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.mlir.constant(2 : index) : i64
    %508 = llvm.mul %473, %507  : i64
    %509 = llvm.add %506, %508  : i64
    %510 = llvm.add %509, %478  : i64
    %511 = llvm.getelementptr %501[%510] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %500, %511 : !llvm.ptr<i32>
    %512 = llvm.add %478, %477  : i64
    llvm.br ^bb43(%512 : i64)
  ^bb45:  // pred: ^bb43
    %513 = llvm.add %473, %472  : i64
    llvm.br ^bb41(%513 : i64)
  ^bb46:  // pred: ^bb41
    %514 = llvm.add %468, %467  : i64
    llvm.br ^bb39(%514 : i64)
  ^bb47:  // pred: ^bb39
    %515 = llvm.add %463, %462  : i64
    llvm.br ^bb37(%515 : i64)
  ^bb48:  // pred: ^bb37
    %516 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %517 = llvm.insertvalue %405, %516[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %518 = llvm.insertvalue %459, %517[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %518 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0", "v1_0"], llvm.emit_c_interface, output_names = ["v3_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %6[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %6[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %0[%23] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.getelementptr %34[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %35[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %63, %26 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.mlir.constant(16 : i64) : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(0 : i64) : i64
    %92 = llvm.getelementptr %70[%91] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %92 : !llvm.ptr<ptr<i8>>
    %93 = llvm.mlir.constant(4 : i64) : i64
    %94 = llvm.call @omTensorCreateUntyped(%93) : (i64) -> !llvm.ptr<i8>
    %95 = llvm.mlir.constant(1 : i64) : i64
    %96 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.bitcast %96 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %98 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%94, %95, %97, %99) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %100 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%94, %100) : (!llvm.ptr<i8>, i64) -> ()
    %101 = llvm.call @omTensorGetShape(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.call @omTensorGetStrides(%94) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %103 = llvm.mlir.constant(0 : i64) : i64
    %104 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %101[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %102[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %101[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %102[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(2 : i64) : i64
    %114 = llvm.extractvalue %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %101[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %102[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(3 : i64) : i64
    %119 = llvm.extractvalue %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %101[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %102[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(1 : i64) : i64
    %124 = llvm.getelementptr %70[%123] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %94, %124 : !llvm.ptr<ptr<i8>>
    %125 = llvm.call @omTensorListCreate(%70, %67, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %125 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

