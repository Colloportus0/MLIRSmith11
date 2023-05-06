module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<-5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %9 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %10 = llvm.insertvalue %8, %9[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %8, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.insertvalue %14, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.insertvalue %16, %15[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.insertvalue %18, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.insertvalue %20, %19[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.mlir.constant(1 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.null : !llvm.ptr<i32>
    %33 = llvm.getelementptr %32[%30] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %34 = llvm.ptrtoint %33 : !llvm.ptr<i32> to i64
    %35 = llvm.mlir.constant(16 : index) : i64
    %36 = llvm.add %34, %35  : i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<i32> to i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.sub %35, %40  : i64
    %42 = llvm.add %39, %41  : i64
    %43 = llvm.urem %42, %35  : i64
    %44 = llvm.sub %42, %43  : i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr<i32>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %38, %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %30, %50[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %31, %51[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%53 : i64)
  ^bb1(%56: i64):  // 2 preds: ^bb0, ^bb2
    %57 = llvm.icmp "slt" %56, %54 : i64
    llvm.cond_br %57, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %58 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.getelementptr %58[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %60 = llvm.load %59 : !llvm.ptr<i32>
    %61 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.getelementptr %61[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %60, %62 : !llvm.ptr<i32>
    %63 = llvm.add %56, %55  : i64
    llvm.br ^bb1(%63 : i64)
  ^bb3:  // pred: ^bb1
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    %67 = llvm.mlir.constant(2 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.mlir.constant(2 : index) : i64
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.mlir.null : !llvm.ptr<i32>
    %73 = llvm.getelementptr %72[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %74 = llvm.ptrtoint %73 : !llvm.ptr<i32> to i64
    %75 = llvm.mlir.constant(16 : index) : i64
    %76 = llvm.add %74, %75  : i64
    %77 = llvm.call @malloc(%76) : (i64) -> !llvm.ptr<i8>
    %78 = llvm.bitcast %77 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %79 = llvm.ptrtoint %78 : !llvm.ptr<i32> to i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.sub %75, %80  : i64
    %82 = llvm.add %79, %81  : i64
    %83 = llvm.urem %82, %75  : i64
    %84 = llvm.sub %82, %83  : i64
    %85 = llvm.inttoptr %84 : i64 to !llvm.ptr<i32>
    %86 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %87 = llvm.insertvalue %78, %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.insertvalue %64, %90[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.insertvalue %65, %91[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %66, %92[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.insertvalue %67, %93[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.insertvalue %70, %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.insertvalue %69, %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.insertvalue %67, %96[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.insertvalue %68, %97[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(0 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%99 : i64)
  ^bb4(%102: i64):  // 2 preds: ^bb3, ^bb14
    %103 = llvm.icmp "slt" %102, %100 : i64
    llvm.cond_br %103, ^bb5, ^bb15
  ^bb5:  // pred: ^bb4
    %104 = llvm.mlir.constant(0 : index) : i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%104 : i64)
  ^bb6(%107: i64):  // 2 preds: ^bb5, ^bb13
    %108 = llvm.icmp "slt" %107, %105 : i64
    llvm.cond_br %108, ^bb7, ^bb14
  ^bb7:  // pred: ^bb6
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%109 : i64)
  ^bb8(%112: i64):  // 2 preds: ^bb7, ^bb12
    %113 = llvm.icmp "slt" %112, %110 : i64
    llvm.cond_br %113, ^bb9, ^bb13
  ^bb9:  // pred: ^bb8
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%114 : i64)
  ^bb10(%117: i64):  // 2 preds: ^bb9, ^bb11
    %118 = llvm.icmp "slt" %117, %115 : i64
    llvm.cond_br %118, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %119 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %120 = llvm.getelementptr %119[%117] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.add %102, %107  : i64
    %124 = llvm.add %123, %112  : i64
    %125 = llvm.add %124, %6  : i64
    %126 = llvm.getelementptr %122[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.load %126 : !llvm.ptr<i32>
    %128 = llvm.add %121, %127  : i32
    %129 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mul %102, %130  : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %107, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mul %112, %135  : i64
    %137 = llvm.add %134, %136  : i64
    %138 = llvm.add %137, %117  : i64
    %139 = llvm.getelementptr %129[%138] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %128, %139 : !llvm.ptr<i32>
    %140 = llvm.add %117, %116  : i64
    llvm.br ^bb10(%140 : i64)
  ^bb12:  // pred: ^bb10
    %141 = llvm.add %112, %111  : i64
    llvm.br ^bb8(%141 : i64)
  ^bb13:  // pred: ^bb8
    %142 = llvm.add %107, %106  : i64
    llvm.br ^bb6(%142 : i64)
  ^bb14:  // pred: ^bb6
    %143 = llvm.add %102, %101  : i64
    llvm.br ^bb4(%143 : i64)
  ^bb15:  // pred: ^bb4
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    %147 = llvm.mlir.constant(2 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(2 : index) : i64
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mlir.null : !llvm.ptr<i32>
    %153 = llvm.getelementptr %152[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %154 = llvm.ptrtoint %153 : !llvm.ptr<i32> to i64
    %155 = llvm.mlir.constant(16 : index) : i64
    %156 = llvm.add %154, %155  : i64
    %157 = llvm.call @malloc(%156) : (i64) -> !llvm.ptr<i8>
    %158 = llvm.bitcast %157 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %159 = llvm.ptrtoint %158 : !llvm.ptr<i32> to i64
    %160 = llvm.mlir.constant(1 : index) : i64
    %161 = llvm.sub %155, %160  : i64
    %162 = llvm.add %159, %161  : i64
    %163 = llvm.urem %162, %155  : i64
    %164 = llvm.sub %162, %163  : i64
    %165 = llvm.inttoptr %164 : i64 to !llvm.ptr<i32>
    %166 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %167 = llvm.insertvalue %158, %166[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %165, %167[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.insertvalue %169, %168[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.insertvalue %144, %170[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %172 = llvm.insertvalue %145, %171[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.insertvalue %146, %172[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %174 = llvm.insertvalue %147, %173[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %175 = llvm.insertvalue %150, %174[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %176 = llvm.insertvalue %149, %175[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.insertvalue %147, %176[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.insertvalue %148, %177[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%179 : i64)
  ^bb16(%182: i64):  // 2 preds: ^bb15, ^bb26
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%184 : i64)
  ^bb18(%187: i64):  // 2 preds: ^bb17, ^bb25
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%189 : i64)
  ^bb20(%192: i64):  // 2 preds: ^bb19, ^bb24
    %193 = llvm.icmp "slt" %192, %190 : i64
    llvm.cond_br %193, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %194 = llvm.mlir.constant(0 : index) : i64
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%194 : i64)
  ^bb22(%197: i64):  // 2 preds: ^bb21, ^bb23
    %198 = llvm.icmp "slt" %197, %195 : i64
    llvm.cond_br %198, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %199 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.mlir.constant(2 : index) : i64
    %201 = llvm.mul %182, %200  : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mul %187, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.mlir.constant(2 : index) : i64
    %206 = llvm.mul %192, %205  : i64
    %207 = llvm.add %204, %206  : i64
    %208 = llvm.add %207, %197  : i64
    %209 = llvm.getelementptr %199[%208] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %210 = llvm.load %209 : !llvm.ptr<i32>
    %211 = llvm.mlir.constant(false) : i1
    %212 = "llvm.intr.abs"(%210, %211) : (i32, i1) -> i32
    %213 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mul %182, %214  : i64
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mul %187, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mul %192, %219  : i64
    %221 = llvm.add %218, %220  : i64
    %222 = llvm.add %221, %197  : i64
    %223 = llvm.getelementptr %213[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %212, %223 : !llvm.ptr<i32>
    %224 = llvm.add %197, %196  : i64
    llvm.br ^bb22(%224 : i64)
  ^bb24:  // pred: ^bb22
    %225 = llvm.add %192, %191  : i64
    llvm.br ^bb20(%225 : i64)
  ^bb25:  // pred: ^bb20
    %226 = llvm.add %187, %186  : i64
    llvm.br ^bb18(%226 : i64)
  ^bb26:  // pred: ^bb18
    %227 = llvm.add %182, %181  : i64
    llvm.br ^bb16(%227 : i64)
  ^bb27:  // pred: ^bb16
    %228 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %229 = llvm.extractvalue %178[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.extractvalue %178[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %229, %228[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %232 = llvm.insertvalue %230, %231[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.insertvalue %235, %234[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.insertvalue %237, %236[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.insertvalue %239, %238[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.insertvalue %241, %240[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.insertvalue %243, %242[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.insertvalue %245, %244[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.null : !llvm.ptr<i1>
    %256 = llvm.getelementptr %255[%254] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %257 = llvm.ptrtoint %256 : !llvm.ptr<i1> to i64
    %258 = llvm.mlir.constant(16 : index) : i64
    %259 = llvm.add %257, %258  : i64
    %260 = llvm.call @malloc(%259) : (i64) -> !llvm.ptr<i8>
    %261 = llvm.bitcast %260 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %262 = llvm.ptrtoint %261 : !llvm.ptr<i1> to i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.sub %258, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.urem %265, %258  : i64
    %267 = llvm.sub %265, %266  : i64
    %268 = llvm.inttoptr %267 : i64 to !llvm.ptr<i1>
    %269 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %270 = llvm.insertvalue %261, %269[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %268, %270[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.insertvalue %272, %271[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %247, %273[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %248, %274[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %249, %275[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %253, %277[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %252, %278[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %250, %279[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %251, %280[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%282 : i64)
  ^bb28(%285: i64):  // 2 preds: ^bb27, ^bb38
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%287 : i64)
  ^bb30(%290: i64):  // 2 preds: ^bb29, ^bb37
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%292 : i64)
  ^bb32(%295: i64):  // 2 preds: ^bb31, ^bb36
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%297 : i64)
  ^bb34(%300: i64):  // 2 preds: ^bb33, ^bb35
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %302 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %285, %303  : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mul %290, %305  : i64
    %307 = llvm.add %304, %306  : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mul %295, %308  : i64
    %310 = llvm.add %307, %309  : i64
    %311 = llvm.add %310, %300  : i64
    %312 = llvm.getelementptr %302[%311] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %313 = llvm.load %312 : !llvm.ptr<i32>
    %314 = llvm.extractvalue %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %290, %315  : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mul %295, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.add %319, %300  : i64
    %321 = llvm.getelementptr %314[%320] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %322 = llvm.load %321 : !llvm.ptr<i32>
    %323 = llvm.icmp "slt" %313, %322 : i32
    %324 = llvm.extractvalue %281[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.mlir.constant(2 : index) : i64
    %326 = llvm.mul %285, %325  : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mul %290, %327  : i64
    %329 = llvm.add %326, %328  : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mul %295, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.add %332, %300  : i64
    %334 = llvm.getelementptr %324[%333] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %323, %334 : !llvm.ptr<i1>
    %335 = llvm.add %300, %299  : i64
    llvm.br ^bb34(%335 : i64)
  ^bb36:  // pred: ^bb34
    %336 = llvm.add %295, %294  : i64
    llvm.br ^bb32(%336 : i64)
  ^bb37:  // pred: ^bb32
    %337 = llvm.add %290, %289  : i64
    llvm.br ^bb30(%337 : i64)
  ^bb38:  // pred: ^bb30
    %338 = llvm.add %285, %284  : i64
    llvm.br ^bb28(%338 : i64)
  ^bb39:  // pred: ^bb28
    %339 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %340 = llvm.insertvalue %52, %339[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %341 = llvm.insertvalue %281, %340[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %341 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.call @main_graph(%1, %2, %3, %4, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %6, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>) -> ()
    %23 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %24 = llvm.extractvalue %23[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %25 = llvm.extractvalue %23[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %26 = llvm.mlir.constant(2 : i64) : i64
    %27 = llvm.mlir.constant(16 : i64) : i64
    %28 = llvm.call @malloc(%27) : (i64) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.call @omTensorCreateUntyped(%30) : (i64) -> !llvm.ptr<i8>
    %32 = llvm.mlir.constant(1 : i64) : i64
    %33 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.bitcast %33 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %35 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.bitcast %35 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%31, %32, %34, %36) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %37 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%31, %37) : (!llvm.ptr<i8>, i64) -> ()
    %38 = llvm.call @omTensorGetShape(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %39 = llvm.call @omTensorGetStrides(%31) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %40 = llvm.mlir.constant(0 : i64) : i64
    %41 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.getelementptr %38[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.getelementptr %39[%40] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %43, %44 : !llvm.ptr<i64>
    %45 = llvm.mlir.constant(0 : i64) : i64
    %46 = llvm.getelementptr %29[%45] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %31, %46 : !llvm.ptr<ptr<i8>>
    %47 = llvm.mlir.constant(4 : i64) : i64
    %48 = llvm.call @omTensorCreateUntyped(%47) : (i64) -> !llvm.ptr<i8>
    %49 = llvm.mlir.constant(1 : i64) : i64
    %50 = llvm.extractvalue %25[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.bitcast %50 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %52 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.bitcast %52 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%48, %49, %51, %53) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %54 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%48, %54) : (!llvm.ptr<i8>, i64) -> ()
    %55 = llvm.call @omTensorGetShape(%48) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%48) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.extractvalue %25[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %58, %59 : !llvm.ptr<i64>
    %60 = llvm.extractvalue %25[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.mlir.constant(1 : i64) : i64
    %63 = llvm.extractvalue %25[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %55[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %25[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %56[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.extractvalue %25[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %55[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %25[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %56[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(3 : i64) : i64
    %73 = llvm.extractvalue %25[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %55[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %25[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %56[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.getelementptr %29[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %48, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.call @omTensorListCreate(%29, %26, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %79 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<128 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<128 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

