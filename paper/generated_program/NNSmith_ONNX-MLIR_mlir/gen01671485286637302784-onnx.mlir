module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 4 , 1] , \22name\22 : \22v7_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<5> : tensor<1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x i32>>>
  llvm.mlir.global internal constant @constant_2(dense<[[[[6]], [[5]]]]> : tensor<1x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<1 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_0(dense<10> : tensor<1x4x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<4 x array<1 x i32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i1>, %arg1: !llvm.ptr<i1>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v7_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<4 x array<1 x i32>>>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<1 x array<4 x array<1 x i32>>>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %39 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>>
    %40 = llvm.bitcast %39 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.insertvalue %48, %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.insertvalue %60, %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>>
    %63 = llvm.bitcast %62 : !llvm.ptr<array<1 x array<1 x array<1 x i32>>>> to !llvm.ptr<i32>
    %64 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %65 = llvm.insertvalue %63, %64[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.insertvalue %63, %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.insertvalue %67, %66[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.insertvalue %71, %70[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %79 = llvm.mlir.constant(1 : index) : i64
    %80 = llvm.insertvalue %79, %78[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %81 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %82 = llvm.bitcast %81 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %83 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %84 = llvm.insertvalue %82, %83[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %85 = llvm.insertvalue %82, %84[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.insertvalue %86, %85[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %88 = llvm.mlir.constant(2 : index) : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.mlir.constant(2 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(2 : index) : i64
    %94 = llvm.mlir.constant(4 : index) : i64
    %95 = llvm.mlir.constant(8 : index) : i64
    %96 = llvm.mlir.null : !llvm.ptr<i32>
    %97 = llvm.getelementptr %96[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<i32> to i64
    %99 = llvm.mlir.constant(16 : index) : i64
    %100 = llvm.add %98, %99  : i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr<i8>
    %102 = llvm.bitcast %101 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %103 = llvm.ptrtoint %102 : !llvm.ptr<i32> to i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.sub %99, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.urem %106, %99  : i64
    %108 = llvm.sub %106, %107  : i64
    %109 = llvm.inttoptr %108 : i64 to !llvm.ptr<i32>
    %110 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %111 = llvm.insertvalue %102, %110[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %109, %111[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.insertvalue %113, %112[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %88, %114[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %89, %115[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %90, %116[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %91, %117[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.insertvalue %94, %118[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %93, %119[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %91, %120[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %92, %121[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(2 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%123 : i64)
  ^bb1(%126: i64):  // 2 preds: ^bb0, ^bb11
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%128 : i64)
  ^bb3(%131: i64):  // 2 preds: ^bb2, ^bb10
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%133 : i64)
  ^bb5(%136: i64):  // 2 preds: ^bb4, ^bb9
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(2 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%138 : i64)
  ^bb7(%141: i64):  // 2 preds: ^bb6, ^bb8
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %143 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mul %126, %144  : i64
    %146 = llvm.mlir.constant(2 : index) : i64
    %147 = llvm.mul %12, %146  : i64
    %148 = llvm.add %145, %147  : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mul %136, %149  : i64
    %151 = llvm.add %148, %150  : i64
    %152 = llvm.add %151, %141  : i64
    %153 = llvm.getelementptr %143[%152] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %154 = llvm.load %153 : !llvm.ptr<i1>
    %155 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %156 = llvm.add %12, %136  : i64
    %157 = llvm.add %156, %12  : i64
    %158 = llvm.getelementptr %155[%157] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %159 = llvm.load %158 : !llvm.ptr<i32>
    %160 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.mlir.constant(2 : index) : i64
    %162 = llvm.mul %12, %161  : i64
    %163 = llvm.add %162, %131  : i64
    %164 = llvm.add %163, %136  : i64
    %165 = llvm.add %164, %12  : i64
    %166 = llvm.getelementptr %160[%165] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %167 = llvm.load %166 : !llvm.ptr<i32>
    %168 = llvm.select %154, %159, %167 : i1, i32
    %169 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %170 = llvm.mlir.constant(4 : index) : i64
    %171 = llvm.mul %126, %170  : i64
    %172 = llvm.mlir.constant(2 : index) : i64
    %173 = llvm.mul %131, %172  : i64
    %174 = llvm.add %171, %173  : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mul %136, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.add %177, %141  : i64
    %179 = llvm.getelementptr %169[%178] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %168, %179 : !llvm.ptr<i32>
    %180 = llvm.add %141, %140  : i64
    llvm.br ^bb7(%180 : i64)
  ^bb9:  // pred: ^bb7
    %181 = llvm.add %136, %135  : i64
    llvm.br ^bb5(%181 : i64)
  ^bb10:  // pred: ^bb5
    %182 = llvm.add %131, %130  : i64
    llvm.br ^bb3(%182 : i64)
  ^bb11:  // pred: ^bb3
    %183 = llvm.add %126, %125  : i64
    llvm.br ^bb1(%183 : i64)
  ^bb12:  // pred: ^bb1
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mlir.constant(2 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(8 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i64>
    %193 = llvm.getelementptr %192[%191] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
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
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %184, %210[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %185, %211[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %190, %214[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %187, %216[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %188, %217[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%219 : i64)
  ^bb13(%222: i64):  // 2 preds: ^bb12, ^bb23
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%224 : i64)
  ^bb15(%227: i64):  // 2 preds: ^bb14, ^bb22
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%229 : i64)
  ^bb17(%232: i64):  // 2 preds: ^bb16, ^bb21
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%234 : i64)
  ^bb19(%237: i64):  // 2 preds: ^bb18, ^bb20
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %239 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(4 : index) : i64
    %241 = llvm.mul %222, %240  : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %227, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mul %232, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.add %247, %237  : i64
    %249 = llvm.getelementptr %239[%248] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %250 = llvm.load %249 : !llvm.ptr<i32>
    %251 = llvm.sext %250 : i32 to i64
    %252 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.mlir.constant(4 : index) : i64
    %254 = llvm.mul %222, %253  : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mul %227, %255  : i64
    %257 = llvm.add %254, %256  : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mul %232, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.add %260, %237  : i64
    %262 = llvm.getelementptr %252[%261] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %251, %262 : !llvm.ptr<i64>
    %263 = llvm.add %237, %236  : i64
    llvm.br ^bb19(%263 : i64)
  ^bb21:  // pred: ^bb19
    %264 = llvm.add %232, %231  : i64
    llvm.br ^bb17(%264 : i64)
  ^bb22:  // pred: ^bb17
    %265 = llvm.add %227, %226  : i64
    llvm.br ^bb15(%265 : i64)
  ^bb23:  // pred: ^bb15
    %266 = llvm.add %222, %221  : i64
    llvm.br ^bb13(%266 : i64)
  ^bb24:  // pred: ^bb13
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mlir.constant(1 : index) : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mlir.constant(4 : index) : i64
    %274 = llvm.mlir.constant(8 : index) : i64
    %275 = llvm.mlir.null : !llvm.ptr<i64>
    %276 = llvm.getelementptr %275[%274] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %277 = llvm.ptrtoint %276 : !llvm.ptr<i64> to i64
    %278 = llvm.mlir.constant(16 : index) : i64
    %279 = llvm.add %277, %278  : i64
    %280 = llvm.call @malloc(%279) : (i64) -> !llvm.ptr<i8>
    %281 = llvm.bitcast %280 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %282 = llvm.ptrtoint %281 : !llvm.ptr<i64> to i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.sub %278, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.urem %285, %278  : i64
    %287 = llvm.sub %285, %286  : i64
    %288 = llvm.inttoptr %287 : i64 to !llvm.ptr<i64>
    %289 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %290 = llvm.insertvalue %281, %289[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.insertvalue %288, %290[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.insertvalue %292, %291[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %267, %293[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %268, %294[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %269, %295[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %270, %296[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %273, %297[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %272, %298[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %270, %299[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %271, %300[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%302 : i64)
  ^bb25(%305: i64):  // 2 preds: ^bb24, ^bb35
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%307 : i64)
  ^bb27(%310: i64):  // 2 preds: ^bb26, ^bb34
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%312 : i64)
  ^bb29(%315: i64):  // 2 preds: ^bb28, ^bb33
    %316 = llvm.icmp "slt" %315, %313 : i64
    llvm.cond_br %316, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%317 : i64)
  ^bb31(%320: i64):  // 2 preds: ^bb30, ^bb32
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %322 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mul %305, %323  : i64
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mul %310, %325  : i64
    %327 = llvm.add %324, %326  : i64
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mul %315, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.add %330, %320  : i64
    %332 = llvm.getelementptr %322[%331] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %333 = llvm.load %332 : !llvm.ptr<i64>
    %334 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %335 = llvm.load %334 : !llvm.ptr<i64>
    %336 = llvm.icmp "slt" %333, %335 : i64
    %337 = llvm.select %336, %335, %333 : i1, i64
    %338 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %339 = llvm.load %338 : !llvm.ptr<i64>
    %340 = llvm.icmp "slt" %337, %339 : i64
    %341 = llvm.select %340, %337, %339 : i1, i64
    %342 = llvm.extractvalue %301[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mul %305, %343  : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mul %310, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mul %315, %348  : i64
    %350 = llvm.add %347, %349  : i64
    %351 = llvm.add %350, %320  : i64
    %352 = llvm.getelementptr %342[%351] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %341, %352 : !llvm.ptr<i64>
    %353 = llvm.add %320, %319  : i64
    llvm.br ^bb31(%353 : i64)
  ^bb33:  // pred: ^bb31
    %354 = llvm.add %315, %314  : i64
    llvm.br ^bb29(%354 : i64)
  ^bb34:  // pred: ^bb29
    %355 = llvm.add %310, %309  : i64
    llvm.br ^bb27(%355 : i64)
  ^bb35:  // pred: ^bb27
    %356 = llvm.add %305, %304  : i64
    llvm.br ^bb25(%356 : i64)
  ^bb36:  // pred: ^bb25
    %357 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %358 = llvm.insertvalue %31, %357[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %359 = llvm.insertvalue %301, %358[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %359 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v7_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(3 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(0 : i64) : i64
    %77 = llvm.getelementptr %50[%76] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %77 : !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(4 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(2 : i64) : i64
    %99 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %86[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %87[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %86[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %87[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
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

