module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<[[[[5, 6]]]]> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_4(dense<4> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_3(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %34 = llvm.bitcast %33 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %35 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %36 = llvm.insertvalue %34, %35[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.insertvalue %34, %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(0 : index) : i64
    %39 = llvm.insertvalue %38, %37[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.constant(4 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i32>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %56 = llvm.bitcast %55 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %58 = llvm.insertvalue %56, %57[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(2 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.insertvalue %66, %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.insertvalue %68, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.insertvalue %70, %69[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.insertvalue %72, %71[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(1 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(2 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(2 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.null : !llvm.ptr<i32>
    %87 = llvm.getelementptr %86[%85] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i32> to i64
    %89 = llvm.mlir.constant(16 : index) : i64
    %90 = llvm.add %88, %89  : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %93 = llvm.ptrtoint %92 : !llvm.ptr<i32> to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %89, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.urem %96, %89  : i64
    %98 = llvm.sub %96, %97  : i64
    %99 = llvm.inttoptr %98 : i64 to !llvm.ptr<i32>
    %100 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %101 = llvm.insertvalue %92, %100[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.insertvalue %78, %104[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.insertvalue %79, %105[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.insertvalue %80, %106[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %81, %107[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.insertvalue %84, %108[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.insertvalue %83, %109[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %81, %110[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %82, %111[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.mlir.constant(1 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%113 : i64)
  ^bb1(%116: i64):  // 2 preds: ^bb0, ^bb11
    %117 = llvm.icmp "slt" %116, %114 : i64
    llvm.cond_br %117, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%118 : i64)
  ^bb3(%121: i64):  // 2 preds: ^bb2, ^bb10
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%123 : i64)
  ^bb5(%126: i64):  // 2 preds: ^bb4, ^bb9
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%128 : i64)
  ^bb7(%131: i64):  // 2 preds: ^bb6, ^bb8
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %133 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.mlir.constant(2 : index) : i64
    %135 = llvm.mul %116, %134  : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mul %121, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mul %126, %139  : i64
    %141 = llvm.add %138, %140  : i64
    %142 = llvm.add %141, %131  : i64
    %143 = llvm.getelementptr %133[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %145[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %147 = llvm.load %146 : !llvm.ptr<i32>
    %148 = llvm.icmp "slt" %144, %147 : i32
    %149 = llvm.select %148, %144, %147 : i1, i32
    %150 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mul %116, %151  : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mul %121, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.mlir.constant(2 : index) : i64
    %157 = llvm.mul %126, %156  : i64
    %158 = llvm.add %155, %157  : i64
    %159 = llvm.add %158, %131  : i64
    %160 = llvm.getelementptr %150[%159] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %149, %160 : !llvm.ptr<i32>
    %161 = llvm.add %131, %130  : i64
    llvm.br ^bb7(%161 : i64)
  ^bb9:  // pred: ^bb7
    %162 = llvm.add %126, %125  : i64
    llvm.br ^bb5(%162 : i64)
  ^bb10:  // pred: ^bb5
    %163 = llvm.add %121, %120  : i64
    llvm.br ^bb3(%163 : i64)
  ^bb11:  // pred: ^bb3
    %164 = llvm.add %116, %115  : i64
    llvm.br ^bb1(%164 : i64)
  ^bb12:  // pred: ^bb1
    %165 = llvm.mlir.constant(1 : index) : i64
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(4 : index) : i64
    %172 = llvm.mlir.constant(4 : index) : i64
    %173 = llvm.mlir.null : !llvm.ptr<i32>
    %174 = llvm.getelementptr %173[%172] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.ptrtoint %174 : !llvm.ptr<i32> to i64
    %176 = llvm.mlir.constant(16 : index) : i64
    %177 = llvm.add %175, %176  : i64
    %178 = llvm.call @malloc(%177) : (i64) -> !llvm.ptr<i8>
    %179 = llvm.bitcast %178 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %180 = llvm.ptrtoint %179 : !llvm.ptr<i32> to i64
    %181 = llvm.mlir.constant(1 : index) : i64
    %182 = llvm.sub %176, %181  : i64
    %183 = llvm.add %180, %182  : i64
    %184 = llvm.urem %183, %176  : i64
    %185 = llvm.sub %183, %184  : i64
    %186 = llvm.inttoptr %185 : i64 to !llvm.ptr<i32>
    %187 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %188 = llvm.insertvalue %179, %187[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.insertvalue %186, %188[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.mlir.constant(0 : index) : i64
    %191 = llvm.insertvalue %190, %189[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %165, %191[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %166, %192[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %167, %193[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %168, %194[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %171, %195[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %170, %196[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %168, %197[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %169, %198[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.mlir.constant(0 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%200 : i64)
  ^bb13(%203: i64):  // 2 preds: ^bb12, ^bb23
    %204 = llvm.icmp "slt" %203, %201 : i64
    llvm.cond_br %204, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %205 = llvm.mlir.constant(0 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%205 : i64)
  ^bb15(%208: i64):  // 2 preds: ^bb14, ^bb22
    %209 = llvm.icmp "slt" %208, %206 : i64
    llvm.cond_br %209, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %210 = llvm.mlir.constant(0 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%210 : i64)
  ^bb17(%213: i64):  // 2 preds: ^bb16, ^bb21
    %214 = llvm.icmp "slt" %213, %211 : i64
    llvm.cond_br %214, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %215 = llvm.mlir.constant(0 : index) : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%215 : i64)
  ^bb19(%218: i64):  // 2 preds: ^bb18, ^bb20
    %219 = llvm.icmp "slt" %218, %216 : i64
    llvm.cond_br %219, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %220 = llvm.extractvalue %112[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(2 : index) : i64
    %222 = llvm.mul %203, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %208, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %213, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %218  : i64
    %230 = llvm.getelementptr %220[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %231 = llvm.load %230 : !llvm.ptr<i32>
    %232 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(4 : index) : i64
    %234 = llvm.mul %203, %233  : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mul %208, %235  : i64
    %237 = llvm.add %234, %236  : i64
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mul %213, %238  : i64
    %240 = llvm.add %237, %239  : i64
    %241 = llvm.add %240, %218  : i64
    %242 = llvm.getelementptr %232[%241] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %231, %242 : !llvm.ptr<i32>
    %243 = llvm.add %218, %217  : i64
    llvm.br ^bb19(%243 : i64)
  ^bb21:  // pred: ^bb19
    %244 = llvm.add %213, %212  : i64
    llvm.br ^bb17(%244 : i64)
  ^bb22:  // pred: ^bb17
    %245 = llvm.add %208, %207  : i64
    llvm.br ^bb15(%245 : i64)
  ^bb23:  // pred: ^bb15
    %246 = llvm.add %203, %202  : i64
    llvm.br ^bb13(%246 : i64)
  ^bb24:  // pred: ^bb13
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%247 : i64)
  ^bb25(%250: i64):  // 2 preds: ^bb24, ^bb35
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%252 : i64)
  ^bb27(%255: i64):  // 2 preds: ^bb26, ^bb34
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%257 : i64)
  ^bb29(%260: i64):  // 2 preds: ^bb28, ^bb33
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%262 : i64)
  ^bb31(%265: i64):  // 2 preds: ^bb30, ^bb32
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.add %255, %267  : i64
    %269 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mul %250, %270  : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mul %255, %272  : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mul %260, %275  : i64
    %277 = llvm.add %274, %276  : i64
    %278 = llvm.add %277, %265  : i64
    %279 = llvm.getelementptr %269[%278] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %280 = llvm.load %279 : !llvm.ptr<i32>
    %281 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mul %250, %282  : i64
    %284 = llvm.mlir.constant(2 : index) : i64
    %285 = llvm.mul %268, %284  : i64
    %286 = llvm.add %283, %285  : i64
    %287 = llvm.mlir.constant(2 : index) : i64
    %288 = llvm.mul %260, %287  : i64
    %289 = llvm.add %286, %288  : i64
    %290 = llvm.add %289, %265  : i64
    %291 = llvm.getelementptr %281[%290] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %280, %291 : !llvm.ptr<i32>
    %292 = llvm.add %265, %264  : i64
    llvm.br ^bb31(%292 : i64)
  ^bb33:  // pred: ^bb31
    %293 = llvm.add %260, %259  : i64
    llvm.br ^bb29(%293 : i64)
  ^bb34:  // pred: ^bb29
    %294 = llvm.add %255, %254  : i64
    llvm.br ^bb27(%294 : i64)
  ^bb35:  // pred: ^bb27
    %295 = llvm.add %250, %249  : i64
    llvm.br ^bb25(%295 : i64)
  ^bb36:  // pred: ^bb25
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    %301 = llvm.mlir.constant(2 : index) : i64
    %302 = llvm.mlir.constant(4 : index) : i64
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mlir.null : !llvm.ptr<i32>
    %305 = llvm.getelementptr %304[%303] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.ptrtoint %305 : !llvm.ptr<i32> to i64
    %307 = llvm.mlir.constant(16 : index) : i64
    %308 = llvm.add %306, %307  : i64
    %309 = llvm.call @malloc(%308) : (i64) -> !llvm.ptr<i8>
    %310 = llvm.bitcast %309 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %311 = llvm.ptrtoint %310 : !llvm.ptr<i32> to i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.sub %307, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.urem %314, %307  : i64
    %316 = llvm.sub %314, %315  : i64
    %317 = llvm.inttoptr %316 : i64 to !llvm.ptr<i32>
    %318 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %319 = llvm.insertvalue %310, %318[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %317, %319[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.insertvalue %321, %320[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %296, %322[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %298, %324[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %299, %325[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %302, %326[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %301, %327[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %299, %328[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %300, %329[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.mlir.constant(0 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%331 : i64)
  ^bb37(%334: i64):  // 2 preds: ^bb36, ^bb47
    %335 = llvm.icmp "slt" %334, %332 : i64
    llvm.cond_br %335, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %336 = llvm.mlir.constant(0 : index) : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%336 : i64)
  ^bb39(%339: i64):  // 2 preds: ^bb38, ^bb46
    %340 = llvm.icmp "slt" %339, %337 : i64
    llvm.cond_br %340, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %341 = llvm.mlir.constant(0 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%341 : i64)
  ^bb41(%344: i64):  // 2 preds: ^bb40, ^bb45
    %345 = llvm.icmp "slt" %344, %342 : i64
    llvm.cond_br %345, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %346 = llvm.mlir.constant(0 : index) : i64
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%346 : i64)
  ^bb43(%349: i64):  // 2 preds: ^bb42, ^bb44
    %350 = llvm.icmp "slt" %349, %347 : i64
    llvm.cond_br %350, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %351 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mul %334, %352  : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mul %339, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.mlir.constant(2 : index) : i64
    %358 = llvm.mul %344, %357  : i64
    %359 = llvm.add %356, %358  : i64
    %360 = llvm.add %359, %349  : i64
    %361 = llvm.getelementptr %351[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.load %361 : !llvm.ptr<i32>
    %363 = llvm.extractvalue %199[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mul %334, %364  : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mul %339, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.mlir.constant(2 : index) : i64
    %370 = llvm.mul %344, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.add %371, %349  : i64
    %373 = llvm.getelementptr %363[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %374 = llvm.load %373 : !llvm.ptr<i32>
    %375 = llvm.add %362, %374  : i32
    %376 = llvm.extractvalue %330[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(4 : index) : i64
    %378 = llvm.mul %334, %377  : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mul %339, %379  : i64
    %381 = llvm.add %378, %380  : i64
    %382 = llvm.mlir.constant(2 : index) : i64
    %383 = llvm.mul %344, %382  : i64
    %384 = llvm.add %381, %383  : i64
    %385 = llvm.add %384, %349  : i64
    %386 = llvm.getelementptr %376[%385] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %375, %386 : !llvm.ptr<i32>
    %387 = llvm.add %349, %348  : i64
    llvm.br ^bb43(%387 : i64)
  ^bb45:  // pred: ^bb43
    %388 = llvm.add %344, %343  : i64
    llvm.br ^bb41(%388 : i64)
  ^bb46:  // pred: ^bb41
    %389 = llvm.add %339, %338  : i64
    llvm.br ^bb39(%389 : i64)
  ^bb47:  // pred: ^bb39
    %390 = llvm.add %334, %333  : i64
    llvm.br ^bb37(%390 : i64)
  ^bb48:  // pred: ^bb37
    %391 = llvm.mlir.constant(4 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    %393 = llvm.mlir.null : !llvm.ptr<i64>
    %394 = llvm.getelementptr %393[%391] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %395 = llvm.ptrtoint %394 : !llvm.ptr<i64> to i64
    %396 = llvm.mlir.constant(16 : index) : i64
    %397 = llvm.add %395, %396  : i64
    %398 = llvm.call @malloc(%397) : (i64) -> !llvm.ptr<i8>
    %399 = llvm.bitcast %398 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %400 = llvm.ptrtoint %399 : !llvm.ptr<i64> to i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.sub %396, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.urem %403, %396  : i64
    %405 = llvm.sub %403, %404  : i64
    %406 = llvm.inttoptr %405 : i64 to !llvm.ptr<i64>
    %407 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %408 = llvm.insertvalue %399, %407[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %409 = llvm.insertvalue %406, %408[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.insertvalue %410, %409[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.insertvalue %391, %411[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.insertvalue %392, %412[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.mlir.constant(4 : index) : i64
    %416 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%414 : i64)
  ^bb49(%417: i64):  // 2 preds: ^bb48, ^bb50
    %418 = llvm.icmp "slt" %417, %415 : i64
    llvm.cond_br %418, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %419 = llvm.extractvalue %413[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.getelementptr %419[%417] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %420 : !llvm.ptr<i64>
    %421 = llvm.add %417, %416  : i64
    llvm.br ^bb49(%421 : i64)
  ^bb51:  // pred: ^bb49
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.null : !llvm.ptr<i64>
    %425 = llvm.getelementptr %424[%422] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i64> to i64
    %427 = llvm.mlir.constant(16 : index) : i64
    %428 = llvm.add %426, %427  : i64
    %429 = llvm.call @malloc(%428) : (i64) -> !llvm.ptr<i8>
    %430 = llvm.bitcast %429 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %431 = llvm.ptrtoint %430 : !llvm.ptr<i64> to i64
    %432 = llvm.mlir.constant(1 : index) : i64
    %433 = llvm.sub %427, %432  : i64
    %434 = llvm.add %431, %433  : i64
    %435 = llvm.urem %434, %427  : i64
    %436 = llvm.sub %434, %435  : i64
    %437 = llvm.inttoptr %436 : i64 to !llvm.ptr<i64>
    %438 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %439 = llvm.insertvalue %430, %438[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.insertvalue %437, %439[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.mlir.constant(0 : index) : i64
    %442 = llvm.insertvalue %441, %440[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.insertvalue %422, %442[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.insertvalue %423, %443[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(4 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%445 : i64)
  ^bb52(%448: i64):  // 2 preds: ^bb51, ^bb53
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %450 = llvm.extractvalue %413[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %451 = llvm.getelementptr %450[%448] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %452 = llvm.load %451 : !llvm.ptr<i64>
    %453 = llvm.extractvalue %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %454 = llvm.load %453 : !llvm.ptr<i64>
    %455 = llvm.mul %452, %454  : i64
    %456 = llvm.extractvalue %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.getelementptr %456[%448] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %455, %457 : !llvm.ptr<i64>
    %458 = llvm.add %448, %447  : i64
    llvm.br ^bb52(%458 : i64)
  ^bb54:  // pred: ^bb52
    %459 = llvm.mlir.constant(4 : index) : i64
    %460 = llvm.mlir.constant(1 : index) : i64
    %461 = llvm.mlir.null : !llvm.ptr<i1>
    %462 = llvm.getelementptr %461[%459] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %463 = llvm.ptrtoint %462 : !llvm.ptr<i1> to i64
    %464 = llvm.mlir.constant(16 : index) : i64
    %465 = llvm.add %463, %464  : i64
    %466 = llvm.call @malloc(%465) : (i64) -> !llvm.ptr<i8>
    %467 = llvm.bitcast %466 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %468 = llvm.ptrtoint %467 : !llvm.ptr<i1> to i64
    %469 = llvm.mlir.constant(1 : index) : i64
    %470 = llvm.sub %464, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.urem %471, %464  : i64
    %473 = llvm.sub %471, %472  : i64
    %474 = llvm.inttoptr %473 : i64 to !llvm.ptr<i1>
    %475 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %476 = llvm.insertvalue %467, %475[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.insertvalue %474, %476[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.insertvalue %478, %477[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.insertvalue %459, %479[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.insertvalue %460, %480[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%482 : i64)
  ^bb55(%485: i64):  // 2 preds: ^bb54, ^bb56
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %487 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %488 = llvm.getelementptr %487[%485] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %489 = llvm.load %488 : !llvm.ptr<i64>
    %490 = llvm.extractvalue %444[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %491 = llvm.getelementptr %490[%485] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %492 = llvm.load %491 : !llvm.ptr<i64>
    %493 = llvm.icmp "eq" %489, %492 : i64
    %494 = llvm.extractvalue %481[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %495 = llvm.getelementptr %494[%485] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %493, %495 : !llvm.ptr<i1>
    %496 = llvm.add %485, %484  : i64
    llvm.br ^bb55(%496 : i64)
  ^bb57:  // pred: ^bb55
    %497 = llvm.mlir.constant(4 : index) : i64
    %498 = llvm.mlir.constant(1 : index) : i64
    %499 = llvm.mlir.null : !llvm.ptr<i64>
    %500 = llvm.getelementptr %499[%497] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %501 = llvm.ptrtoint %500 : !llvm.ptr<i64> to i64
    %502 = llvm.mlir.constant(16 : index) : i64
    %503 = llvm.add %501, %502  : i64
    %504 = llvm.call @malloc(%503) : (i64) -> !llvm.ptr<i8>
    %505 = llvm.bitcast %504 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %506 = llvm.ptrtoint %505 : !llvm.ptr<i64> to i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.sub %502, %507  : i64
    %509 = llvm.add %506, %508  : i64
    %510 = llvm.urem %509, %502  : i64
    %511 = llvm.sub %509, %510  : i64
    %512 = llvm.inttoptr %511 : i64 to !llvm.ptr<i64>
    %513 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %514 = llvm.insertvalue %505, %513[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %512, %514[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.insertvalue %516, %515[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %518 = llvm.insertvalue %497, %517[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %519 = llvm.insertvalue %498, %518[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(4 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%520 : i64)
  ^bb58(%523: i64):  // 2 preds: ^bb57, ^bb59
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %525 = llvm.extractvalue %481[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %526 = llvm.getelementptr %525[%523] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %527 = llvm.load %526 : !llvm.ptr<i1>
    %528 = llvm.extractvalue %413[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %529 = llvm.getelementptr %528[%523] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %530 = llvm.load %529 : !llvm.ptr<i64>
    %531 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %532 = llvm.getelementptr %531[%523] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %533 = llvm.load %532 : !llvm.ptr<i64>
    %534 = llvm.select %527, %530, %533 : i1, i64
    %535 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %536 = llvm.getelementptr %535[%523] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %534, %536 : !llvm.ptr<i64>
    %537 = llvm.add %523, %522  : i64
    llvm.br ^bb58(%537 : i64)
  ^bb60:  // pred: ^bb58
    %538 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %539 = llvm.getelementptr %538[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %540 = llvm.load %539 : !llvm.ptr<i64>
    %541 = llvm.extractvalue %519[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %542 = llvm.getelementptr %541[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %543 = llvm.load %542 : !llvm.ptr<i64>
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mlir.constant(2 : index) : i64
    %546 = llvm.mlir.constant(1 : index) : i64
    %547 = llvm.mul %545, %543  : i64
    %548 = llvm.mul %547, %544  : i64
    %549 = llvm.mul %548, %540  : i64
    %550 = llvm.mlir.null : !llvm.ptr<i32>
    %551 = llvm.getelementptr %550[%549] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %552 = llvm.ptrtoint %551 : !llvm.ptr<i32> to i64
    %553 = llvm.mlir.constant(16 : index) : i64
    %554 = llvm.add %552, %553  : i64
    %555 = llvm.call @malloc(%554) : (i64) -> !llvm.ptr<i8>
    %556 = llvm.bitcast %555 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %557 = llvm.ptrtoint %556 : !llvm.ptr<i32> to i64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.sub %553, %558  : i64
    %560 = llvm.add %557, %559  : i64
    %561 = llvm.urem %560, %553  : i64
    %562 = llvm.sub %560, %561  : i64
    %563 = llvm.inttoptr %562 : i64 to !llvm.ptr<i32>
    %564 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %565 = llvm.insertvalue %556, %564[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %566 = llvm.insertvalue %563, %565[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.mlir.constant(0 : index) : i64
    %568 = llvm.insertvalue %567, %566[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %569 = llvm.insertvalue %540, %568[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.insertvalue %544, %569[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.insertvalue %543, %570[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %572 = llvm.insertvalue %545, %571[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.insertvalue %548, %572[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.insertvalue %547, %573[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %575 = llvm.insertvalue %545, %574[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %576 = llvm.insertvalue %546, %575[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.mlir.constant(0 : index) : i64
    %578 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%577 : i64)
  ^bb61(%579: i64):  // 2 preds: ^bb60, ^bb71
    %580 = llvm.icmp "slt" %579, %540 : i64
    llvm.cond_br %580, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %581 = llvm.mlir.constant(0 : index) : i64
    %582 = llvm.mlir.constant(2 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%581 : i64)
  ^bb63(%584: i64):  // 2 preds: ^bb62, ^bb70
    %585 = llvm.icmp "slt" %584, %582 : i64
    llvm.cond_br %585, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%586 : i64)
  ^bb65(%588: i64):  // 2 preds: ^bb64, ^bb69
    %589 = llvm.icmp "slt" %588, %543 : i64
    llvm.cond_br %589, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%590 : i64)
  ^bb67(%593: i64):  // 2 preds: ^bb66, ^bb68
    %594 = llvm.icmp "slt" %593, %591 : i64
    llvm.cond_br %594, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %595 = llvm.extractvalue %330[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.mlir.constant(4 : index) : i64
    %597 = llvm.mul %13, %596  : i64
    %598 = llvm.mlir.constant(2 : index) : i64
    %599 = llvm.mul %584, %598  : i64
    %600 = llvm.add %597, %599  : i64
    %601 = llvm.mlir.constant(2 : index) : i64
    %602 = llvm.mul %13, %601  : i64
    %603 = llvm.add %600, %602  : i64
    %604 = llvm.add %603, %593  : i64
    %605 = llvm.getelementptr %595[%604] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %606 = llvm.load %605 : !llvm.ptr<i32>
    %607 = llvm.extractvalue %576[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.extractvalue %576[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.mul %579, %608  : i64
    %610 = llvm.extractvalue %576[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.mul %584, %610  : i64
    %612 = llvm.add %609, %611  : i64
    %613 = llvm.mlir.constant(2 : index) : i64
    %614 = llvm.mul %588, %613  : i64
    %615 = llvm.add %612, %614  : i64
    %616 = llvm.add %615, %593  : i64
    %617 = llvm.getelementptr %607[%616] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %606, %617 : !llvm.ptr<i32>
    %618 = llvm.add %593, %592  : i64
    llvm.br ^bb67(%618 : i64)
  ^bb69:  // pred: ^bb67
    %619 = llvm.add %588, %587  : i64
    llvm.br ^bb65(%619 : i64)
  ^bb70:  // pred: ^bb65
    %620 = llvm.add %584, %583  : i64
    llvm.br ^bb63(%620 : i64)
  ^bb71:  // pred: ^bb63
    %621 = llvm.add %579, %578  : i64
    llvm.br ^bb61(%621 : i64)
  ^bb72:  // pred: ^bb61
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.mlir.constant(2 : index) : i64
    %624 = llvm.mlir.constant(1 : index) : i64
    %625 = llvm.mlir.constant(2 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    %627 = llvm.mlir.constant(2 : index) : i64
    %628 = llvm.mlir.constant(4 : index) : i64
    %629 = llvm.mlir.constant(4 : index) : i64
    %630 = llvm.mlir.null : !llvm.ptr<i64>
    %631 = llvm.getelementptr %630[%629] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %632 = llvm.ptrtoint %631 : !llvm.ptr<i64> to i64
    %633 = llvm.mlir.constant(16 : index) : i64
    %634 = llvm.add %632, %633  : i64
    %635 = llvm.call @malloc(%634) : (i64) -> !llvm.ptr<i8>
    %636 = llvm.bitcast %635 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %637 = llvm.ptrtoint %636 : !llvm.ptr<i64> to i64
    %638 = llvm.mlir.constant(1 : index) : i64
    %639 = llvm.sub %633, %638  : i64
    %640 = llvm.add %637, %639  : i64
    %641 = llvm.urem %640, %633  : i64
    %642 = llvm.sub %640, %641  : i64
    %643 = llvm.inttoptr %642 : i64 to !llvm.ptr<i64>
    %644 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %645 = llvm.insertvalue %636, %644[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %646 = llvm.insertvalue %643, %645[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.mlir.constant(0 : index) : i64
    %648 = llvm.insertvalue %647, %646[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %649 = llvm.insertvalue %622, %648[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %650 = llvm.insertvalue %623, %649[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %651 = llvm.insertvalue %624, %650[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %652 = llvm.insertvalue %625, %651[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %653 = llvm.insertvalue %628, %652[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %654 = llvm.insertvalue %627, %653[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %655 = llvm.insertvalue %625, %654[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %656 = llvm.insertvalue %626, %655[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %657 = llvm.mlir.constant(0 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%657 : i64)
  ^bb73(%659: i64):  // 2 preds: ^bb72, ^bb83
    %660 = llvm.icmp "slt" %659, %540 : i64
    llvm.cond_br %660, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %661 = llvm.mlir.constant(0 : index) : i64
    %662 = llvm.mlir.constant(2 : index) : i64
    %663 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%661 : i64)
  ^bb75(%664: i64):  // 2 preds: ^bb74, ^bb82
    %665 = llvm.icmp "slt" %664, %662 : i64
    llvm.cond_br %665, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %666 = llvm.mlir.constant(0 : index) : i64
    %667 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%666 : i64)
  ^bb77(%668: i64):  // 2 preds: ^bb76, ^bb81
    %669 = llvm.icmp "slt" %668, %543 : i64
    llvm.cond_br %669, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %670 = llvm.mlir.constant(0 : index) : i64
    %671 = llvm.mlir.constant(2 : index) : i64
    %672 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%670 : i64)
  ^bb79(%673: i64):  // 2 preds: ^bb78, ^bb80
    %674 = llvm.icmp "slt" %673, %671 : i64
    llvm.cond_br %674, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %675 = llvm.extractvalue %576[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.extractvalue %576[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.mul %659, %676  : i64
    %678 = llvm.extractvalue %576[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.mul %664, %678  : i64
    %680 = llvm.add %677, %679  : i64
    %681 = llvm.mlir.constant(2 : index) : i64
    %682 = llvm.mul %668, %681  : i64
    %683 = llvm.add %680, %682  : i64
    %684 = llvm.add %683, %673  : i64
    %685 = llvm.getelementptr %675[%684] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %686 = llvm.load %685 : !llvm.ptr<i32>
    %687 = llvm.sext %686 : i32 to i64
    %688 = llvm.extractvalue %656[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %689 = llvm.mlir.constant(4 : index) : i64
    %690 = llvm.mul %659, %689  : i64
    %691 = llvm.mlir.constant(2 : index) : i64
    %692 = llvm.mul %664, %691  : i64
    %693 = llvm.add %690, %692  : i64
    %694 = llvm.mlir.constant(2 : index) : i64
    %695 = llvm.mul %668, %694  : i64
    %696 = llvm.add %693, %695  : i64
    %697 = llvm.add %696, %673  : i64
    %698 = llvm.getelementptr %688[%697] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %687, %698 : !llvm.ptr<i64>
    %699 = llvm.add %673, %672  : i64
    llvm.br ^bb79(%699 : i64)
  ^bb81:  // pred: ^bb79
    %700 = llvm.add %668, %667  : i64
    llvm.br ^bb77(%700 : i64)
  ^bb82:  // pred: ^bb77
    %701 = llvm.add %664, %663  : i64
    llvm.br ^bb75(%701 : i64)
  ^bb83:  // pred: ^bb75
    %702 = llvm.add %659, %658  : i64
    llvm.br ^bb73(%702 : i64)
  ^bb84:  // pred: ^bb73
    llvm.return %656 : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>>
    %45 = llvm.mlir.constant(1 : i64) : i64
    %46 = llvm.mlir.constant(8 : i64) : i64
    %47 = llvm.call @malloc(%46) : (i64) -> !llvm.ptr<i8>
    %48 = llvm.bitcast %47 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %49 = llvm.mlir.constant(4 : i64) : i64
    %50 = llvm.call @omTensorCreateUntyped(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.extractvalue %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %54 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%50, %51, %53, %55) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %56 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%50, %56) : (!llvm.ptr<i8>, i64) -> ()
    %57 = llvm.call @omTensorGetShape(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %58 = llvm.call @omTensorGetStrides(%50) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %59 = llvm.mlir.constant(0 : i64) : i64
    %60 = llvm.extractvalue %44[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %57[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %58[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %44[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %57[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %44[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %58[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(2 : i64) : i64
    %70 = llvm.extractvalue %44[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %57[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.extractvalue %44[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %58[%69] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.mlir.constant(3 : i64) : i64
    %75 = llvm.extractvalue %44[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %57[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.extractvalue %44[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %58[%74] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.mlir.constant(0 : i64) : i64
    %80 = llvm.getelementptr %48[%79] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %50, %80 : !llvm.ptr<ptr<i8>>
    %81 = llvm.call @omTensorListCreate(%48, %45, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %81 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

